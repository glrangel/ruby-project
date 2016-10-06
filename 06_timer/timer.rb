class Timer
	attr_accessor :seconds

	#default intialization
	def seconds
		@seconds = 0
	end

	def time_string
		sec = @seconds % 60
		mins = (@seconds / 60) % 60
		hrs = (@seconds /60) / 60
		if(sec < 10)
			sec = "0" + sec.to_s
		else
			sec = sec.to_s
		end
		if(mins < 10)
			mins = "0" + mins.to_s
		else
			mins = mins.to_s
		end
		if(hrs < 10)
			hrs = "0" + hrs.to_s
		else
			hrs = hrs.to_s
		end
		time = hrs + ":" + mins + ":" + sec
	end
end
