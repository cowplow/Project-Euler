
def factorial(n)
	return 1 if n.zero?
	1.upto(n).inject(:*)
end


sum = 0

fact = factorial(100).to_s


fact.split("").collect do |x|
	sum += x.to_i
end

puts sum


