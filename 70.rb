here = Time.now

@prime_list = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43,
47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107,
109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173,
179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239,
241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311,
313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383,
389, 397, 401, 409, 419, 421, 431, 433, 439, 443, 449, 457,
461, 463, 467, 479, 487, 491, 499, 503, 509, 521, 523, 541,
547, 557, 563, 569, 571, 577, 587, 593, 599, 601, 607, 613,
617, 619, 631, 641, 643, 647, 653, 659, 661, 673, 677, 683,
691, 701, 709, 719, 727, 733, 739, 743, 751, 757, 761, 769,
773, 787, 797, 809, 811, 821, 823, 827, 829, 839, 853, 857,
859, 863, 877, 881, 883, 887, 907, 911, 919, 929, 937, 941,
947, 953, 967, 971, 977, 983, 991, 997]

def isPrime( num )
        if num < 2
                return false
        end

        root = Math.sqrt(num)

        # Check all primes < 1000
        for i in @prime_list
                if i > root
                        return true
                end
                if num % i == 0
                        return false
                end
        end

        # Check remaining odd numbers starting with 1009 (first prime > 1000)
        for i in @prime_list[-1] + 2..root
                if isPrime( i )
                        @prime_list.push( i )
                        if i > root or num % i == 0
                                return false
                        end
                end
        end

        return true
end

def getNextPrime( number )
        if number % 2 == 0
                number += 1
        else
                number += 2
        end

        while not isPrime( number )
                number += 2
        end

        return number
end

def exp_factor(number)
	index = 0
	divisor = 2
	factors = Hash.new
	arr = []

	if isPrime(number)
		arr << [number, 1]
		return arr
	end

	while divisor <= number
		if index >= @prime_list.length
			divisor = getNextPrime(divisor)
			@prime_list << divisor
		else
			divisor = @prime_list[index]
		end

		if number % divisor == 0
			number /= divisor
			if factors[divisor] != nil
				factors[divisor] += 1
			else
				factors[divisor] = 1
			end
		else
			index += 1
		end
	end


	factors.each do |x, y|
		arr << [x, y]
	end

	return arr
end

def totient(number)
	factors = exp_factor(number)

	product = 1
	factors.each do |a, b|
		product *= (a - 1) * a ** (b-1)
	end
	return product
end

def perms(str1, str2)
	if str1.length != str2.length
		return false
	end

	str1.each_char do |char|
		if str1.count(char) != str2.count(char)
			return false
		end
	end

	return true
end

target = [nil, 1.0008]
first = true
start_point = @prime_list[-1]

while @prime_list[-1] < 4000
	new = getNextPrime(@prime_list[-1]) 
	if first and new > 3162
		first = false
		start_point = @prime_list.length
	end
	@prime_list.push(new)
end

start_point.upto(@prime_list.length-1) do |x|
	start_point.downto(start_point-150) do |y|
		number = @prime_list[x] * @prime_list[y]

		if number > 10**7
			next
		end

		co_prime = totient(number)
		ratio = number.to_f/co_prime

		if ratio < target[1] and perms(number.to_s, co_prime.to_s)
			target = [number, ratio]
			print number, " ", ratio, "\n" 
		end
	end
end

puts Time.now-here