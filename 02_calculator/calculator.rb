

def add(x1, x2)
	return x1 + x2
end

def subtract(x1, x2)
	return x1 - x2
end

def sum(arrVals)
	if arrVals.empty?
		return 0
	end

	val = 0;
	arrVals.each do |a|
		val = val + a
	end
	return val
end