nums = [1,2,3,4,5,6,7]

nums = nums.permutation(7).to_a

nums.sort! do |x, y|
	y <=> x
end

def prime?( number )
	if number % 2 == 0
		return false
	end
	root = Math.sqrt(number).to_i

	i = 3
	while i <= root
		if number % i == 0
			return false
		end
		i += 2
	end
	true
end

nums.each do |x|
	temp = x.join("").to_i
	if prime?(temp)
		puts temp
		break
	end
end

puts prime?(4)