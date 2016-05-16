class Production < ActiveRecord::Base
	validates_uniqueness_of :production_date
	def total
		tmp = 0
		tmp = tmp+self.a_am
		tmp = tmp+self.a_pm
		tmp = tmp+self.b_am
		tmp = tmp+self.b_pm
		tmp = tmp+self.c_am
		tmp = tmp+self.c_pm
		tmp = tmp+self.d_am
		tmp = tmp+self.d_pm
		tmp = tmp+self.pa_am
		tmp = tmp+self.pa_pm
		tmp = tmp+self.pb_am
		tmp = tmp+self.pb_pm
		tmp
	end

	def a
		(a_am + a_pm).to_f
	end

	def b
		b_am + b_pm
	end

	def c
		c_am + c_pm
	end

	def d
		d_am + d_pm
	end

	def pa
		pa_am + pa_pm
	end

	def pb
		pb_am + pb_pm
	end
end