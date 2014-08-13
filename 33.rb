@arrx = []
@arry = []
@arrz = []
@arrsolutions = []
@bigsolutions = []

def split(x, y)
	arr = x.to_s.split("").collect
	arr2 = y.to_s.split("").collect
	@arrx = []
	@arry = []

	arr2.each do |a|
		@arry << a.to_i
	end

	arr.each do |a|
		@arrx << a.to_i
	end
end

def contains(x, y)
	@arrz = []

	if x[0] == y[0]
		@arrz << x[1]
		@arrz << y[1]
		return true
	elsif x[0] == y[1]
		@arrz << x[1]
		@arrz << y[0]
		return true
	elsif x[1] == y[0]
		@arrz << x[0]
		@arrz << y[1]
		return true
	elsif x[1] == y[1]
		@arrz << x[0]
		@arrz << y[0]
		return true
	else
		return false
	end
end

11.upto(98) do |x|
	(x+1).upto(99) do |y|

		split(x, y)

		if contains(@arrx, @arry)
			if x.to_f/y == @arrz[0].to_f/@arrz[1] && @arrz[0].to_f/@arrz[1] != 1.0 && x % 10 != 0
				@arrsolutions << [@arrz[0], @arrz[1]]
			end
		end
	end
end

puts @arrsolutions







