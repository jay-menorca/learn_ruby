class Changer
	
	QUARTER = 25
	DIME = 10
	NICKEL = 5
	PENNY = 1

	def self.make_change(amount)
		amtToChange = amount
		changeArr = Array.new

		while amtToChange != 0 
			if amtToChange >= Changer::QUARTER 
				changeArr << Changer::QUARTER
				amtToChange -= Changer::QUARTER
			elsif amtToChange >= Changer::DIME
				changeArr << Changer::DIME
				amtToChange -= Changer::DIME
			elsif amtToChange >= Changer::NICKEL
				changeArr << Changer::NICKEL
				amtToChange -= Changer::NICKEL
			elsif amtToChange >= Changer::PENNY
				changeArr << Changer::PENNY
				amtToChange -= Changer::PENNY
			end 
		end

		return changeArr
	end
end