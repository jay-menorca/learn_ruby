=begin
def reverser
  result = yield.reverse

  result
end
=end

def reverser
	sentence = yield
	result = sentence.split(' ')
	reversed = ""
	result.each do |a|
		reversed = reversed + a.reverse + " "
	end
	reversed.rstrip!
	return reversed
end

def adder(x=1)
	result = yield + x
	return result
end

def repeater(x=0)
  if x == 0
    return yield
  else
    x.times do |n|
      yield
    end
  end
end

=begin
def titleize(sentence)
	result = sentence.split(' ')
	result.each do |a|
		result[0].capitalize!

		case a
		when 'and', 'over', 'the'; then "" 
		else a.capitalize!
		end
	end

	sentence = ""

	result.each do |a|
		sentence = sentence + a + " "
	end
	sentence.rstrip!
	return sentence
end
=end