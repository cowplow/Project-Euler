def divisors?(number)
	root = Math.sqrt(number).to_i
	temp = 1
	sum = 0

	while temp <= root
		if number % temp == 0
			if temp == root
				sum += temp
			else
				sum += temp + number/temp
			end	
		end
		temp += 1
	end

	return sum - number

end

@amicable_nums = []

def amicable?(number)
	if @amicable_nums.include?(number) == false
		x = divisors?(number)
		y = divisors?(x)

		if y == number && x != y
			@amicable_nums << x
			@amicable_nums << y
		end
	end
end


(4..9999).each do |x| #for some reason breaks on numbers 2 and 3, in this case it had no impact on the outcome
	amicable?(x)
end

answer = 0

@amicable_nums.each do |x|
	answer += x
end

puts answer




