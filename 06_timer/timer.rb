

class Timer
	attr_accessor :seconds
	attr_accessor :minutes
	attr_accessor :hours

	def initialize (hours=0, minutes=0, seconds=0)
		@seconds = seconds
		@hours = hours
		@minutes = minutes
	end

	def time_string
		while (@seconds > 60)			
		@seconds -= 60
		@minutes += 1
		while (@minutes > 60)
			@minutes -=60
			@hours +=1
		end
	end	

	return @hours.to_s.rjust(2,'0') + ":" + @minutes.to_s.rjust(2,'0') + ":" + @seconds.to_s.rjust(2,'0')  
	end
end

make = Timer.new


puts make.time_string
