start = Time.now

def perms(str1, str2)
	if str1.length != str2.length
		return false
	end

	str1.each_char do |char|
		if str1.count(char) != str2.count(char)
			return false
		end
	end

	return true
end
answer = 0

100000.upto(166666) do |x|
	2.upto(6) do |y|
		if not perms(x.to_s, (x*y).to_s)
			break
		end
		if y == 6
			answer = x
		else
			next
		end
	end

	if answer > 0
		puts answer
		puts Time.now - start
		exit
	end
end

