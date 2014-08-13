@nums = Hash.new
counter = 0

0.upto(9) do |x|
	y = x**5
	@nums[x] = y
end


2.upto(999999) do |x|
	temp = 0
	y = x.to_s

	arr = []
	arr = y.split("").collect
	
	arr.each do |z|
		name = z.to_i
		temp += @nums[name]
	end
	if temp == x
		counter += x
	end
end

puts counter