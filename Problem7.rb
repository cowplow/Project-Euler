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

x = 3

(2..10001).each do |i|
	while prime?(x) == false
		x +=2
	end

	if prime?(x)
		answer = x
	end

	x += 2

	if i == 10001
		puts "#{answer}"
	end
end
