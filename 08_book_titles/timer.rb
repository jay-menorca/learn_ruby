class Timer
	def initialize(sec=0)
		@seconds = sec

	end
	#@seconds = 0

	#45001, hh = 12, mm=30, 


	def seconds=(str)
		@seconds = str
	end

	def seconds
		@seconds
	end

	def time_string
		hh = 0
		mm = 0
		if (seconds >= 3600)
    		hh = seconds/3600
    	end
    	if seconds%3600 > 0
    		mm = seconds%3600 / 60
    	end
    	ss = seconds%3600%60

    	hhStr = padded(hh)
    	mmStr = padded(mm)
    	ssStr = padded(ss)

    	result = "#{hhStr}:#{mmStr}:#{ssStr}"
    	return result 
    end

	def padded(numVal)

		if numVal < 10 
			strVal = "0#{numVal}"
			return strVal
		end
		strVal = numVal.to_s

		return strVal
	end
end