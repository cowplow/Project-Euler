start = Time.now
answer = 0

2.upto(100) do |x|
	1.upto(x-1) do |y|
		sum = 0
		num = x**y
		arr = num.to_s.each_char do |a|
			sum += a.to_i
		end
		if sum > answer
			answer = sum
		end
	end
end

puts answer

puts Time.now - start
