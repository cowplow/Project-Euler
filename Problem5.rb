def divisible( number )
	19.downto(11) do |x|
		if number % x != 0
			return 0
			break
		end
	end
end

y = 2520

if divisible(y) == 0
	while divisible(y) == 0
	
		y += 2520
	end
	puts "#{y}"
end
