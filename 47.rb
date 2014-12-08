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

@prime_list = [2]
checker = 3

(2..50000).each do |i|
	while prime?(checker) == false
		checker +=2
	end

	@prime_list << checker

	checker += 2
end

def testNum( number )
	y = number - 1
	i = 0
	test_nums = Hash.new
	
	while @prime_list[i] <= y
		if number % @prime_list[i] == 0
			test_nums[@prime_list[i]] = @prime_list[i]
		end

		i += 1
	end

	return test_nums.length
end

counter = 0
start = 100000


while counter < 4 do
	if testNum(start) == 4
		counter += 1
	else
		counter = 0
	end

	if counter == 4
		puts start - 3
	end

	if start % 10000 == 0
		puts start
	end
	start += 1
end






