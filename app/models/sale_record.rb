class SaleRecord < ActiveRecord::Base
	def balance_by_date(date)
		sr = SaleRecord.find_by_date(date)
		if sr
			sr.balance
		else
			0
		end
	end

	def balance
		self.ttl_in - SaleRecord.ttl_out_by_date(self.date)
	end

	def ttl_in
		yesterday_date = self.date - 1.days
		self.purchase + self.arra + self.balance_by_date(yesterday_date)
	end

	before_save :calc_balance

	def calc_balance
		self.balance = self.ttl_in - SaleRecord.ttl_out_by_date(self.date)
	end

	def self.arra(month , year)
		SaleRecord.select(:arra).where("MONTH(date) = :month and YEAR(date) = :year", month: month, year: year).sum(:arra)
	end

	def self.ttl_in(month, year)
		tmp = 0
		sale_records = SaleRecord.where("MONTH(date) = :month and YEAR(date) = :year", month: month, year: year)
		sale_records.each do |sr|
			tmp += sr.ttl_in
		end
		tmp
	end

	def self.ttl_out_by_date(date)
		CustomerPurchase.where("date = :date", :date => date).sum(:quantity)
	end

	def self.ttl_out(month, year)
		#SaleRecord.select(:ttl_out).where("MONTH(date) = :month and YEAR(date) = :year", month: month, year: year).sum(:ttl_out)
		CustomerPurchase.where("MONTH(date) = :month and YEAR(date) = :year", :month => month, :year => year).sum(:quantity)
	end

	def self.purchase(month, year)
		SaleRecord.select(:purchase).where("MONTH(date) = :month and YEAR(date) = :year", month: month, year: year).sum(:purchase)
	end
end
