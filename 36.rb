def palindrome10(number)
	front = number.to_s
	if front == front.reverse
		return true
	end
	return false
end

def palindrome2(number)
	back = dec2bin(number)

	if back == back.reverse
		return true
	end
	return false
end

def dec2bin(number)
   number = Integer(number);
   if(number == 0)
      return 0;
   end
   ret_bin = "";
   ## Untill val is zero, convert it into binary format
   while(number != 0)
      ret_bin = String(number % 2) + ret_bin;
      number = number / 2;
   end
   return ret_bin;
end

counter = 0

1.upto(999999) do |x|
	if palindrome10(x)
		if palindrome2(x)
			counter += x
		end
	end
end

puts counter

