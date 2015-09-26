class Script
	require 'securerandom'
	file = File.open("words.txt",'r')
	rollArray = Array.new

	def self.fillArray(number) 
		array = Array.new
		
		for x in 0..number-1 do
			randNum = getRoll()
			array.push randNum
		end
		return array
	end


	def self.getRoll() 
		array = Array.new

		for i in 0..5 do
			diceRoll = 1 + rand(6)
			array.push diceRoll
		end
		temp = array.join.to_i
		return temp
	end


	print "Enter the number of words you desire in your passcode : "
	number = gets

	rollArray = fillArray(number.to_i)

end
