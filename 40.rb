nums_arr = []

1.upto(200000) do |x|
	temp = x.to_s
	if temp.length > 1
		arr = temp.split("")
		arr.each do |y|
			nums_arr << y
		end
	else
		nums_arr << temp
	end
end


x = 1

x *= nums_arr[0].to_i
puts x
x *= nums_arr[9].to_i
puts x
x *= nums_arr[99].to_i
puts x
x *= nums_arr[999].to_i
puts x
x *= nums_arr[9999].to_i
puts x
x *= nums_arr[99999].to_i
puts x
x *= nums_arr[999999].to_i
puts x






