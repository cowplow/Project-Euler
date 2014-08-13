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

i = 3
Big_root = Math.sqrt(600851475143).to_i
while i <= Big_root
	if 600851475143 % i == 0 && prime?( i )
		puts i
	end
	i += 2
end
