start = Time.now
@old_num = 1
@old_den = 1
@answer = 0

def next_num(num1, num2)
	cur_num = 2*num2+num1
	cur_denom = num2+num1

	@old_num = cur_num
	@old_den = cur_denom

	if cur_num.to_s.length > cur_denom.to_s.length
		@answer += 1
	end
	return [cur_num, cur_denom]
end

1.upto(1000) do |x|
	arr = next_num(@old_num, @old_den)
end
puts @answer
puts Time.now - start
