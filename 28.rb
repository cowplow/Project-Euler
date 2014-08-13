=begin
each new loop is and odd number squared (eg..1,3,5,7..1001)
for a total of 501 loops.
To find the next 3 special number you just need to move
equal to the current number of the loop*2-2.
=end

@loop_count = 1
@sum_num = 1

def corners(number)
	@sum_num += (number**2)
	cur_number = (number**2)

	3.times do |x|
		cur_number -= (@loop_count*2-2)
		@sum_num += cur_number
	end
end

i = 3

while i <= 1001
	@loop_count +=1
	corners(i)
	i += 2
end

puts @sum_num
