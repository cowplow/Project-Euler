perfect = []
abundant = []
deficient = []
big_abundant = Hash.new

def divisors?(number)
	root = Math.sqrt(number)
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

1.upto(28123).each do |x|
	y = divisors?(x)

	if y == x
		perfect << x
	elsif y > x
		abundant << x
	else
		deficient << x
	end
end



abundant.each do|x|
	abundant.each do |y|
		sum = x + y
		
		if big_abundant[sum] == nil  && sum <= 28123 
				big_abundant[sum] = sum
		end
	end
end



answers = 0

1.upto(28123).each do |x|
	if big_abundant[x] == nil
		answers += x
	end
	if x % 1000 == 0
		puts x
	end
end

puts answers

