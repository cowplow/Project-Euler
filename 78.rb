start = Time.now

def get_gk(number)
	arr = []
	gk = 0
	1.upto(1000000) do |k|
		gk = k * (3*k-1) / 2
		if gk > number
			return arr
		else
			arr << gk
		end
		gk = -1*k * (-3*k-1) / 2
		if gk > number
			return arr
		else
			arr << gk
		end
	end
end

def recursive(amount)
	coins = []
	1.upto(99) do |x|
	    coins << x
	end

	ways = []

    if amount > coins[-1]
        coins << amount
    end

	0.upto(amount) do |x|
	    ways << 0
	end
	ways[0] = 1

	0.upto(coins.length-1) do |i|
	    coins[i].upto(amount) do |j|
	        ways[j] += ways[j-coins[i]]
	    end
	end

	return ways[amount]
end

slam_pig = Hash.new


big_arr = get_gk(1000000)


2.upto(1000000) do |n|
	
	arr = []
	big_arr.each do |x|
		if n >= x
			arr << x
		else
			break
		end
	end


	by = -1

	ways = 0



	0.upto(arr.length-1) do |k|
		pig = n-arr[k]
		if slam_pig[pig] == nil
			slam_pig[pig] = recursive(n-arr[k])
		end
		if k % 2 == 0
			by *= -1
		end
		ways += by * slam_pig[pig]
	end

	slam_pig[n] = ways

	if ways % 1000000 == 0
		puts n
		puts Time.now - start
		exit
	end

	if n % 5000 == 0
		puts n
	end
end





