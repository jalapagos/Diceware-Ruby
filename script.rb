class Script
	require 'securerandom'
	#file = File.open("words.txt",'r')
	rollArray = Array.new
	passArray = Array.new

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

		for i in 0..4 do
			diceRoll = 1 + rand(6)
			array.push diceRoll
		end
		temp = array.join.to_i
	return temp
	end


	def self.findWord(value) 
		file = File.open("words.txt",'r')
		while !file.eof? 
			line = file.readline
			line = line.split(' ')
			if (line.first.to_i==value)
				return line.last
			end
		end
	end

	print "Enter the number of words you desire in your passcode : "
	number = gets

	rollArray = fillArray(number.to_i)

	pass = ""
	rollArray.each do |value|
		word = findWord(value.to_i).split(' ')
		pass = pass + word.last
	end

	puts "Here is a generated password : #{pass}"
end