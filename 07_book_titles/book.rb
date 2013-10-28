
class Book
	def initialize(title=nil)
        @title = title
    end

    def title
    	@title
    end

	def title=(str)
    	
    	result = str.split(' ')
		
		result.each do |a|
			result[0].capitalize!

			case a
			when 'and', 'over', 'the', 'a', 'an', 'in', 'of'; then "" 
			else a.capitalize!
			end
		end

		sentence = ""

		result.each do |a|
			sentence = sentence + a + " "
		end

		@title = sentence.rstrip!
	end
end
