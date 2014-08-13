start = Time.now

answer = 0

1.upto(1000) do |x|
	answer += x**x
end

arr = answer.to_s.split("").to_a

10.downto(1) do |x|
	print arr[0-x]
end

puts Time.now - start 


