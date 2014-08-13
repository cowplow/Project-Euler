pents = Hash.new

1.upto(10000) do |x|
	temp = x * (3*x-1) / 2
	pents[temp] = temp
end

answer = 1100000000

pents.each do |a, b|
	pents.each do |c, d|
		up = b + d
		down = d - b
		if pents[up] != nil && pents[down] != nil && down < answer
			answer = down
		end
	end
end

puts answer


