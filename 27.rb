def prime?( number )
	if number % 2 == 0
		false
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

counter = 0
answer = 0

def formula_up(a, b)
	prime_counter = 0

	0.upto(1000) do |x|
		y = x**2 + a*x + b
		if y < 0
			return prime_counter
		end

		if prime?(y)
			prime_counter += 1
		else
			return prime_counter
		end
	end
	return prime_counter
end



-999.upto(999) do |a|
	-999.upto(999) do |b|
		temp = formula_up(a,b)
		if temp > counter
			counter = temp
			answer = a * b
		end
	end
end

puts answer
