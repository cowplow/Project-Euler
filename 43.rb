nums = [0,1,2,3,4,5,6,7,8,9]

nums = nums.permutation(10).to_a

@primes = [2,3,5,7,11,13,17]

def subString(x)
	y = 1
	counter = 0

	while y < 8
		arr = []
		y.upto(y+2) do |z|
	 		arr << x[z]
	 	end
	 	temp = arr.join("").to_i

	 	if temp % @primes[counter] != 0
	 		return false
	 	end
	 	
	 	y += 1
	 	counter += 1
	end
	return true
end

answer = 0

nums.each do |x|
	if subString(x)
		sum = x.join("").to_i
		answer += sum
	end
end

puts answer


	