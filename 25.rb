counter = 12
num1 = 89
num2 = 144
num3 = 0

until num2.to_s.length == 1000
	
	num3 = num2
	num2 += num1
	num1 = num3
	counter += 1

end

puts counter

