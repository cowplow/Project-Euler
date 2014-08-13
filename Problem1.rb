sum = 0
(0..999).each do |i|
	if i % 3 == 0 || i % 5 == 0
		sum += i
	end
end
puts sum

