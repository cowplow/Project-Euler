$nums = [0, 3, 3, 5, 4, 4, 3, 5, 5, 4]
$teens = [0, 6, 6, 8, 8, 7, 7, 9, 8, 8]
$tens = [0, 3, 6, 6, 5, 5, 5, 7, 6, 6]
$hundreds = 10 #"Hundred and"
$thousand = 11

def getNumChars(n)
	retval = 0

	if n == 1000
		retval += $thousand
		n %= 1000
	end

	if n >= 100
		if n % 100 != 0
			retval += $nums[n/100.floor]
			retval += $hundreds
			n %= 100
		else
			retval += $nums[n/100.floor]
			retval += 7
			n %= 100
		end
	end

	if n >= 11  && n < 20
		retval += $teens[n%10]
		n %= n
	end

	if n >= 10
		retval += $tens[n/10.floor]
		n %= 10
	end

	retval += $nums[n] 

end



answer = 0
(1..1000).each do |x|
	answer += getNumChars(x)
end

puts answer
puts getNumChars(100)
puts getNumChars(115)


