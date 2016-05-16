class Customer < ActiveRecord::Base
	belongs_to :market
	has_many :customer_purchases

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
end
