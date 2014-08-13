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

@primes = Hash.new

1000.upto(9999) do |x|
	if prime?(x)
		@primes[x] = x
	end
end

answer = []

@primes.each do |x, y|
	arr = []
	if @primes[y + 3330] != nil && @primes[y + 6660] != nil
		arr << y
		arr << @primes[y + 3330]
		arr << @primes[y + 6660]
		perm = y.to_s.split("")
		perm = perm.permutation(4)
		final = []
		perm.each do |i|
			final << i.join("").to_i
		end
		if final.include?(@primes[y + 3330]) && final.include?(@primes[y + 6660])
			answer << arr
		end
	end
end

puts answer[0]
puts answer[1]

