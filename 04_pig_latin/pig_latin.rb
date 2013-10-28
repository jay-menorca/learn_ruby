def translate(word)
	if isFirstWordAVowel(word)
		sentence = word + "ay"
		return sentence
	end

	count = word.length
	firstChar = word[0]
	word = word + firstChar
	word[0] = ''


	if isFirstWordAVowel(word)

	#word.compact
		sentence = word + "ay"
		return sentence
	end

	firstChar = word[0]
	word = word + firstChar
	word[0] = ''

	sentence = word + "ay"
end

def isFirstWordAVowel(word)
	firstChar = word[0].upcase

	case firstChar
	when 'A', 'E', 'I', 'O', 'U'; then return true 
	else return false
	end
end


def start_of_word(word, idx)
	result = word[0, idx]
end