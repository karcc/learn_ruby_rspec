class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def pad(n)
		if n < 10
			return "0#{n}"
		elsif n.to_s.length == 2
			return "#{n}"
		end
	end

	def time_string
		hours = @seconds/3600
		minutes = @seconds%3600
		
		watch = "#{pad(hours)}:#{pad(minutes/60)}:#{pad(minutes%60)}"
		#sprintf("%02d:%02d:%02d", hours, minutes/60, minutes%60)
		#sprintf is a great argument that does the exact thing without calling a new method
	end


			


end