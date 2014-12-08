answer = 0

def chain(number)
	
	temp = number

	until temp == 1 || temp == 89
		arr = temp.to_s.split("")
		temp = 0
		arr.each do |x|
			y = x.to_i
			temp += (y*y)
		end
	end
	return temp
end

1.upto(9999999) do |x|
	if chain(x) == 89
		answer += 1
	end
	if x % 1000 == 0
		puts x
	end
end

puts answer
