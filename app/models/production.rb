class Production < ActiveRecord::Base


	def total
		((self.am.nil? ? 0 : self.am) + (self.pm.nil? ? 0 : self.pm)).round(2)
	end

	def self.total_by_date(date)
		tmp = 0
		Production.where("date = :date", date: date).each do |p|
			tmp += p.total
		end
		tmp
	end
end
