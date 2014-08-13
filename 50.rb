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

@primes = [2]

3.upto(9999) do |x|
	if prime?(x)
		@primes << x
	end
end

answer = 0
sum = 0

4.downto(1) do |y|
	counter = 0
	y.upto(@primes.length) do |x|
		sum += @primes[x-1]
		if prime?(sum) && sum <= 999999 && (x+1-y) >= counter && sum > answer
			answer = sum
			counter = x + 1 - y
		end
	end
end

puts answer
