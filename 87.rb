start = Time.now

def prime(n)
    if n < 2 
        return []
    end

    sieve = [true] * n
    p = 3

    while p ** 2 < n
        if sieve[p]
            i = p ** 2
            x = Range.new(i,n)
            x.step(2 * p) do |j|
                sieve[j] = false
            end
        end
        p += 2
    end

    primes = [2]
    i = Range.new(3,sieve.length)
    i.step(2) do |k|
        if sieve[k] 
            primes << k
        end
    end

    return primes
end

nums = Hash.new

deuce = prime(7072)
trip = prime(50000000**(1/3.0))
quad = prime(50000000**(1/4.0))

0.upto(deuce.length-1) do |x|
	0.upto(trip.length-1) do |y|
		sum = deuce[x]**2 + trip[y]**3
		if sum >= 50000000
			break
		end
		0.upto(quad.length-1) do |z|
			sum += quad[z]**4
			if sum >= 50000000
				sum -= quad[z]**4
				break
			elsif nums[sum].nil?()
				nums[sum] = sum
				sum -= quad[z]**4
			else
				sum -= quad[z]**4
			end
		end
	end
end

answer = nums.length

puts answer

puts Time.now-start
				