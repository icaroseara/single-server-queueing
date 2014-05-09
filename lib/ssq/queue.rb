module SSQ
	class Queue
		def initialize capacity 
			@capacity  = capacity # customers in the system
			@arrival_rate_per_hour = 0 
			@departure_rate_per_hour = 0
			@customers_waiting = [] 
		end
		
		def avg_waiting_time
			(@arrival_rate_per_hour)/(@departure_rate_per_hour(@departure_rate_per_hour-@arrival_rate_per_hour))
		end

		def arrive customer
			customer.to_entry
			@customers_waiting << customer
		end

		def departure customer
			customer.to_leave
			@customers_waiting.delete(customer) 
		end

		def renege customer
			customer.to_renege
			@customers_waiting.delete(customer) 
		end
	end
end