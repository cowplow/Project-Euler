def palindrome?(number)
	test = false
	sum = number.to_s.reverse.to_i + number

	0.upto(49) do
		if sum.to_s == sum.to_s.reverse
			return true
		else
			sum += sum.to_s.reverse.to_i
		end
	end
	test
end

lychrel = 0

1.upto(9999) do |x|
	if palindrome?(x) == false
		lychrel += 1
	end
end

puts lychrel
