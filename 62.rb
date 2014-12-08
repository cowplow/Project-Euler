#2183,and 2200 both succeeded here
require "set"

def isCube(number)

	temp =  Math.cbrt(number).to_i

	if number == temp**3
		return true
	else
		return false
	end
end

cubeList = Hash.new

4500.upto(10000) do |x|
	temp = x**3
	if temp.to_s.length == 12
		fish = temp.to_s
		arr = temp.to_s.split("")
		cubeList[fish] = Set.new arr
	end
end

cubeList.each do |key, value|
	answers = []
	cubeList.each do |x, y|
		if key == x
			next
		end
		if value == y
			big = key.split("")
			pig = Hash.new

			big.each do |a|
				if pig[a] == nil
					pig[a] = 0
				else
					pig[a] += 1
				end
			end

			cat = x.split("")
			dog = Hash.new
			cat.each do |a|
				if dog[a] == nil
					dog[a] = 0
				else
					dog[a] += 1
				end
			end

			counter = 0
			dog.each do |a, b|
				if pig[a] == b
					counter += 1
				else
					next
				end
			end

			if counter == dog.length
				answers << x
			end
		else
			next
		end

		if answers.length == 4
			puts key
			puts answers
			exit
		end
	end
end