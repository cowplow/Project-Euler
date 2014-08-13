matrix = Hash.new()

2.upto(100) do |a|
	2.upto(100) do |b|
		temp = a**b
		if matrix[temp] == nil
			matrix[temp] = temp
		end
	end
end

puts matrix.length