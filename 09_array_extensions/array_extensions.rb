class Array 
	def sum
		if self.empty?
			return 0
		end

		result = 0
		self.each do |a|
			result = result + a
		end
		return result
	end

	def square
    	self.map {|num| num ** 2}
  	end

	def square!
    	self.map! {|num| num ** 2}
  	end
end