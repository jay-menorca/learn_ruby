


def echo(word)
	return word
end

def shout(word)
	return word.upcase
end

def repeat(word, count=2)
	i=0

	sentence = ""
	while i<count
		sentence = sentence + word + " "
		i+=1
	end
	sentence.rstrip!
	return sentence
end

def start_of_word(word, idx)
	result = word[0, idx]
end

def first_word(sentence)
	result = sentence.split(' ')
	return result[0]
end

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