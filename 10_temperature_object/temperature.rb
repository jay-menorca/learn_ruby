class Temperature

	attr_accessor :inputHash

	def initialize(inputHash)
		@inputHash = inputHash
	end

	def to_fahrenheit
		@inputHash.each do |a,val|
			if a=="f".to_sym
				return val
			end
			fVal = ctof(val)
			return fVal
		end
	end

	def to_celsius
		inputHash.each do |key,val|
			if key=="c".to_sym
				return val
			end
			cVal = ftoc(val)
			return cVal
		end		
	end

	def self.in_celsius(tempVal)
		aKey = "c".to_sym
		aHash = Hash.new
		@inputHash = aHash
		@inputHash.store(aKey, tempVal)
		temperatureImpl = self.new(@inputHash)
		return temperatureImpl
	end

	def self.in_fahrenheit(tempVal)
		aKey = "f".to_sym
		aHash = Hash.new
		@inputHash = aHash
		@inputHash.store(aKey, tempVal)
		temperatureImpl = self.new(@inputHash)
		return temperatureImpl
	end

	def ftoc(farenVal)
		result = (farenVal.to_f - 32) * 5 / 9
		result.to_i

		return result
	end

	def ctof(celVal)
		result = celVal.to_f * 9 / 5 + 32
		result.to_i
		return result
	end
end


class Celsius < Temperature
	def initialize(inputVal)
		cHash = Hash.new
		cHash.store(:c, inputVal)
		super(cHash)
	end
end

class Fahrenheit < Temperature
	def initialize(inputVal)
		cHash = Hash.new
		cHash.store(:f, inputVal)
		super(cHash)
	end
end