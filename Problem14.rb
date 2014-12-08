answer = 0
terms = 1

def collatz(number)
	if number.even?
		return number/2
	else
		return (3*number +1)
	end
end

999999.downto(2) do |n|
	
	temp = n
	new_terms = 1

	while temp != 1
		temp = collatz(temp)
		new_terms += 1
	end

	if new_terms > terms
		terms = new_terms
		answer = n
	end
end

puts answer
puts terms