def factorial(n)
	return 1 if n.zero?
	1.upto(n).inject(:*)
end

num_right_down = 40
num_right = 20

puts factorial(num_right_down) / (factorial(num_right) * factorial(num_right))










		


