class Market < ActiveRecord::Base
	has_many :customers
	has_many :customer_purchases, through: :customers

	def quantity_by_month(month , year)
		self.customer_purchases.select(:quantity).where("MONTH(date) = :month and YEAR(date) = :year", year: year, month: month).sum(:quantity)
	end

	def expected_payment_by_month(month , year)
		self.customer_purchases.select(:expected_payment).where("MONTH(date) = :month and YEAR(date) = :year", year: year, month: month).sum(:expected_payment)
	end

	def actual_payment_by_month(month , year)
		self.customer_purchases.select(:actual_payment).where("MONTH(date) = :month and YEAR(date) = :year", year: year, month: month).sum(:actual_payment)
	end

	def debt_by_month(month , year)
		self.expected_payment_by_month(month,year) - self.actual_payment_by_month(month,year)
	end

	def self.quantity_by_month(month, year)
		tmp = 0
		Market.select(:id).all.each do |m|
			tmp += m.quantity_by_month(month , year)
		end
		tmp
	end

	def self.expected_payment_by_month(month, year)
		tmp = 0
		Market.select(:id).all.each do |m|
			tmp += m.expected_payment_by_month(month , year)
		end
		tmp
	end

	def self.actual_payment_by_month(month, year)
		tmp = 0
		Market.select(:id).all.each do |m|
			tmp += m.actual_payment_by_month(month , year)
		end
		tmp
	end

	def self.debt_by_month(month, year)
		tmp = 0
		Market.select(:id).all.each do |m|
			tmp += m.debt_by_month(month , year)
		end
		tmp
	end

end
