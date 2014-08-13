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

counter = 2

(3..1999999).each do |x|
	if prime?(x)
		counter += x
	end
end

puts counter