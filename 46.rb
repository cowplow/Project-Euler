#For some reason returns 3771 as a soltuion.  This is not the case, 5777 is the answer they are looking for



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

primes = []
composit = []
dblsquares = []

3.upto(10000) do |x|
	if prime?(x)
		primes << x
	elsif x % 2 != 0
		composit << x
	end
end

1.upto(100) do |x|
	temp = 2 * x * x
	dblsquares << temp
end

comboBreaker = Hash.new
	
primes.each do |x|
	dblsquares.each do |y|
		temp = x + y
		if comboBreaker[temp] == nil
			comboBreaker[temp] = temp
		end
	end
end

puts composit.length


composit.each do |x|
	if comboBreaker[x] != x
		puts x
	end
end
