start = Time.now

@square_list = []

2.upto(1000) do |x|
	if x**2 > 1000
		break
	else
		@square_list << x**2
	end
end

def nearest_SQ(number)
	prev_num = 0
	@square_list.each do |x|
		if number > prev_num && number < x
			arr1 = x - number
			arr2 = number - prev_num
			if arr1 < arr2
				return x
			else
				return prev_num
			end
		else
			prev_num = x
		end
	end
	return @square_list[-1]
end

def find_k(a,b,n)
	k = a**2 - n*b**2
	return [a,b,k,n]
end




def maph(arr)
	a = arr[0]
	b = arr[1]
	k = arr[2]
	n = arr[3]
	new_k = arr[2]
	if k < 0
		new_k *= -1
	end

	prev_m = 0
	prev_difference = 1000000

	0.upto(1000) do |x|
		m =  x
		temp = 0
		if (a + b*m)%new_k == 0 && (m**2 - n)%k == 0 && (m**2 - n)/k < 10
			if (m**2 - n)/k < 0
				temp = (m**2 - n)/k*-1
			else
				temp = (m**2 - n)/k
			end
			if temp - 0 < prev_difference
				prev_difference = temp
				prev_m = m
			end
		end
	end

	new_a = (a*prev_m + n*b)/new_k
	new_b = (a+b*prev_m)/new_k
	new_k = (prev_m**2-n)/k
	return [new_a,new_b,new_k,n]
end

answer = 0
bigX = 0

2.upto(1000) do |x|
	if @square_list.include?(x)
		next
	end
	arr = maph(find_k(Math.sqrt(nearest_SQ(x)).to_i,1,x))

	until arr[2] == 1
		arr = maph(arr)
	end

	if arr[0] > bigX
		bigX = arr[0]
		answer = arr[3]
	end
end

puts answer, bigX

puts Time.now-start
