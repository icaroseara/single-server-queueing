module SSQ
	class Customer
		def initialize(mobile, customer_class)
			@mobile = mobile
			@customer_class = customer_class
			@entry_at, @leave_at  = Time.now
			@reneging = false
		end 

		def to_entry
			@entry_at = Time.now
		end

		def to_leave
			@leave_at = Time.now
		end

		def to_renege
			@reneging = true
		end

		def renegating?
			@reneging
		end

		def predicted_time
			0
		end

		def waiting_time
			@leave_at - @entry_at
		end
	end
end