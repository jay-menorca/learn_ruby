
# Remember the difference between integers and floats:
# 1/2 equals 0
# but 1.0/2.0 equals 0.5
# It is important to know this difference to get these tests to pass.

# Also, you can use the following information to figure out what the equation 
# is to convert between the two units, fahrenheit and celsius: 
# 
# 1. One degree fahrenheit is 5/9 of one degree celsius
# 2. The freezing point of water is 0 degrees celsius but 32 degrees fahrenheit

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

