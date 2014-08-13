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


coins = prime(1000)

2.upto(1000000) do |amount|
	ways = []
	0.upto(amount) do |x|
	    ways << 0
	end
	ways[0] = 1

	0.upto(coins.length-1) do |i|
	    coins[i].upto(amount) do |j|
	        ways[j] += ways[j-coins[i]]
	    end
	end

	if ways[amount] > 5000
		puts amount
		puts Time.now-start
		exit
	end

	if amount % 5000 == 0
		puts amount
	end
end
