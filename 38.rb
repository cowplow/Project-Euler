nums = [1,2,3,4,5,6,7,8,9]

def pandigital(arr)
	arr.each do |x|
		if arr.count(x) != 1 || arr.count("0") > 0
			return false
		end
	end
	return true
end

@results = []
@answer = [0]

def products(number)
	holder = []
	x = 1
	until holder.length >= 9 do
		temp = number  * x
		arr = temp.to_s.split("").collect.to_a
		arr.each do |y|
			holder << y
		end
		x += 1
	end
	if pandigital(holder)
		holder = holder.join("").to_i
		if holder > @answer[0]
			@answer.clear
			@answer << holder
		end
		@results << holder
	end
end

2.upto(50000) do |x|
	products(x)
end


puts @answer

