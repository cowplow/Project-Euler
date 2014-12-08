start = Time.now
counter = 0
triangle = 1

def divisors?(number)
	root = Math.sqrt(number).to_i
	temp = 1
	divisors = 0

	while temp <= root
		if number % temp == 0
			divisors += 2
		end
		temp += 1
	end

	if divisors > 500
		puts number
		return true
	end
	false
end


while divisors?(counter) == false
	counter += triangle
	triangle += 1
end

puts Time.now-start





