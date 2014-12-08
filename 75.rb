start = Time.now

def find_triple(s, s2, mlimit)
	count = 0

	2.upto(mlimit) do |m|
		sm = 0

		if s2 % m == 0
			sm = s2/m
			while sm % 2 == 0
				sm = sm/2
			end
		end


		if m % 2 == 1 
			k = m+2 
		else 
			k = m+1
		end
		while k < 2*m && k <= sm
			if sm % k == 0 && k.gcd(m) == 1
				d = s2/(k*m)
				n = k-m
				a = d*(m*m-n*n)
				b = 2*d*m*n
				c = d*(m*m+n*n)
				count += 1
			end
			k = k+2
		end
	end
	return count
end

answer = 1
s = 14

while s < 1500001
	s2 = s/2
	mlimit = (s2**(0.5) - 1).ceil
	if find_triple(s,s2,mlimit) == 1
		answer += 1
	end
	if s % 10000 == 0
		puts s
	end
	s += 2
end


puts answer


puts Time.now-start