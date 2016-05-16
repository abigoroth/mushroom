class House < ActiveRecord::Base
	has_many :shelves
	has_many :productions

	def total_by_month(month , year)
		tmp = 0
		tmp = self.productions.select("am").where("MONTH(date) = :month and YEAR(date) = :year", month: month , year: year).sum(:am)
		tmp += self.productions.select("pm").where("MONTH(date) = :month and YEAR(date) = :year", month: month , year: year).sum(:pm)
		tmp.round(2)
	end
end
