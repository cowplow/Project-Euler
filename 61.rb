def triangle(number)
	tri = number * (number+1)/2
	return tri
end

def quad(number)
	quad = number*number
	return quad
end

def penta(number)
	penta = number * (3*number-1)/2
	return penta
end

def hex(number)
	six = number * (2*number-1)
	return six
end

def hepta(number)
	seven = number * (5 * number - 3)/2
	return seven
end

def octa(number)
	eight = number * (3*number - 2)
	return eight
end

three = []
four = []
five = []
six = []
seven = []
eight = []

1.upto(200) do |x|
	temp = triangle(x)
	if temp > 1000 && temp < 10000
		three << temp
	end
	temp = quad(x)
	if temp > 1000 && temp < 10000
		four << temp
	end
	temp = penta(x)
	if temp > 1000 && temp < 10000
		five << temp
	end
	temp = hex(x)
	if temp > 1000 && temp < 10000
		six << temp
	end
	temp = hepta(x)
	if temp > 1000 && temp < 10000
		seven << temp
	end
	temp = octa(x)
	if temp > 1000 && temp < 10000
		eight << temp
	end
end

def check(x, y)
	arr1 = x.to_s.split("")
	arr2 = y.to_s.split("")
	if arr1[2] == arr2[0] && arr1[3] == arr2[1]
		return true
	else
		return false
	end
end

masks = ["three", "four", "five", "six", "seven", "eight"]

masks = masks.permutation(6).to_a

counter = 0

masks.each do |x|
	first = []
	second = []
	third = []
	fourth = []
	fifth = []
	sixth = []

	0.upto(x.length-1) do |y|
		temp = x[y]
		arr = []
		case temp
		when "three"
			arr = three
		when "four"
			arr = four
		when "five"
			arr = five
		when "six"
			arr = six
		when "seven"
			arr = seven
		else
			arr = eight
		end

		case y
		when 0
			first = arr
		when 1
			second = arr
		when 2
			third = arr
		when 3
			fourth = arr
		when 4
			fifth = arr
		else
			sixth = arr
		end
	end

	first.each do |a|
		second.each do |b|
			if check(a,b)
				third.each do |c|
					if check(b,c)
						fourth.each do |d|
							if check(c,d)
								fifth.each do |e|
									if check(d,e)
										sixth.each do |f|
											if check(e,f)
												if check(f,a)
													puts (a+b+c+d+e+f)
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end

puts counter
