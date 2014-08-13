def prime?( number )
	if number % 2 == 0
		return false
	end
	root = Math.sqrt(number).to_i

	i = 3
	while i <= root
		if number % i == 0
			return false
		end
		i += 2
	end
	true
end

counter = 1

@arr = [2]

(3..999999).each do |x|
	if x % 2 != 0
		if prime?(x)
			@arr << x
		end
	end
end


def rotate(number)
	
	temp = number.to_s.split("").collect.to_a
	
	if temp.count("0") > 0
		return 0
	end

	temp = temp.rotate
	temp = temp.join("").to_i

	return temp
end

def shredder(number)
	i = 0
	if prime?(number)
		var = number
		until i == number
			var = rotate(var)
			if prime?(var) == false || var == 0
				return false
			end
			puts number
			i = var
		end
	end
	if @arr.include?(number) == false
		return false
	end
	return true
end


@answers = []


3.upto(999999) do |y|
	puts y
	if y % 2 != 0
		if shredder(y)
			@answers << y
			counter += 1
		end
	end
end

puts @answers
puts counter








