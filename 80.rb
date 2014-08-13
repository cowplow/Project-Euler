require 'bigdecimal'

j = 0

squares = Hash.new

2.upto(9) do |a|
	f = a*a
	squares[f] = f
end



2.upto(99) do |y|

	if squares[y] != nil
		next
	end

	r = BigDecimal.new("#{y}").sqrt(102).to_s

	r = r.split("")

	sum = 0

	2.upto(101) do |x|

		sum += r[x].to_i
	end

	j += sum

end




puts j