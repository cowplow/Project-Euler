prev_number = 1
cur_number = 1
sum = 0
while cur_number <= 4000000
	if cur_number.even?
		sum += cur_number
	end

	temp = cur_number
	cur_number += prev_number
	prev_number = temp

	
end
puts "SUM: #{sum}"