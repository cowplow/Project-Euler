start = Time.now

def factorial(n)
	return 1 if n.zero?
	1.upto(n).inject(:*)
end

def combo(n, r)
	temp = factorial(n)/(factorial(r)*factorial(n-r))
end

counter = 0

23.upto(100) do |x|
	2.upto(x-1) do |y|
		if combo(x, y) > 1000000
			diff = x-y
			face = diff-y+1
			counter += face
			break
		end
	end
end

puts counter

puts Time.now-start
