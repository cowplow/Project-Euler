@nums = [1,2,3,4,5,6,7,8,9]

def many(x, y)
	arr = []
	sum = x * y
	matrix = []

	arr = sum.to_s.split("").collect

	arr.each do |z|
		matrix << z.to_i
	end

	arr = []

	arr = x.to_s.split("").collect

	arr.each do |z|
		matrix << z.to_i
	end

	arr = []

	arr = y.to_s.split("").collect

	arr.each do |z|
		matrix << z.to_i
	end

	@nums.each do |g|
		if matrix.count(g) != 1 || matrix.count(0) > 0
			return false
		end
	end
	return true
end

fish = Hash.new
answer = 0


2.upto(9876) do |x|
	2.upto(987) do |y|
		temp = x * y
		if many(x, y)
			if fish[temp] == nil
				puts "#{x} * #{y} = temp" 
				fish[temp] = temp
				answer += temp
			end
		end
	end
end

puts fish.length

puts answer


