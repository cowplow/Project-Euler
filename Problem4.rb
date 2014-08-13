answer = 0

999.downto(100) do |x|
	999.downto(100) do |y|
		z = y * x
		if z < answer
			break
		end
		a = z.to_s
		if a == a.reverse && z > answer
			answer = z
		end
	end
end


puts "#{answer}"