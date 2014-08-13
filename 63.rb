answers = []

1.upto(100) do |x|
	1.upto(100) do |y|
		temp = x ** y
		if temp.to_s.length == y
			answers << ["#{x}^#{y}", temp]
		end
	end
end

puts answers.length