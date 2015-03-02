module CustomersHelper
	def get_age(dob)
		return nil unless dob
		now = Time.now
		now.year - dob.year - (dob.to_time.change(:year => now.year) > now ? 1: 0)
	end
end
