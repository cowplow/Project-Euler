counter = 0

def prime?( number )
	if number == 2
		return true
	end
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

def l_to_r(number)
	arr = number.to_s.split("").collect.to_a
	if arr[-1] == "1"
		return false
	end
	while arr.length != 1
		arr.delete_at(0)
		if arr.length != 1
			arr = arr.join("").to_i
		else
			arr = arr[0].to_i
		end
		if prime?(arr) == false
			return false
		end
		arr = arr.to_s.split("").collect.to_a
	end

	return true
end


def r_to_l(number)
	arr = number.to_s.split("").collect.to_a
	if arr[0] == "1"
		return false
	end

	while arr.length != 1
		arr.pop
		if arr.length != 1
			arr = arr.join("").to_i
		else
			arr = arr[0].to_i
		end
		if prime?(arr) == false
			return false
		end
		arr = arr.to_s.split("").collect.to_a
	end
	return true
end

answers = 0


9.upto(1000000) do |x|
	puts "#{x} - #{counter}" if x % 100000 == 0
	if x % 2 != 0
		if x % 3 != 0
			if prime?(x)
				if l_to_r(x)
					if r_to_l(x)
						answers += x
						counter += 1
					end
				end
			end
		end
	end
end


puts answers
puts counter
