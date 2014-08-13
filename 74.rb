start = Time.now

def factorial(arr)
	sum = 0
	arr.each do |n|
		if n == 0
			sum += 1
			next
		end
		sum += 1.upto(n).inject(:*)
	end
	return sum
end

chains = Hash.new

answer = 0

65.upto(69) do |test|

	orig = test
	so_far = Hash.new

	while so_far[test] == nil
		so_far[test] = 1

		str = test.to_s.split("")

		0.upto(str.length-1) do |x|
			str[x] = str[x].to_i
		end

		future = factorial(str)

		if chains[future] != nil
			so_far[orig] += chains[future]
		elsif so_far[future] == nil  
			so_far.each do |key, value|
				so_far[key] += 1
			end
			test = future
		end
	end

	if so_far[orig] == 60
		answer += 1
	end

	if orig % 1000 == 0
		puts orig
	end

	so_far.each do |key, value|
		if chains[key] == nil
			chains[key] = value
		else
			break
		end
	end
end


puts chains
puts answer, Time.now - start









