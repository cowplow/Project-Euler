def factorial(n)
	return 1 if n.zero?
	1.upto(n).inject(:*)
end

numfactors = []

0.upto(9) do |x|
	numfactors << factorial(x)
end

answer = 0

10.upto(999999) do |x|
	arr = []
	sum = 0
	arr = x.to_s.split("").collect
	nums = []
	arr.each do |y|
		nums << y.to_i
	end
	nums.each do |z|
		sum += numfactors[z]
	end
	if sum == x
		answer += x
	end
end

puts answer


