@triang = Hash.new
@pent = Hash.new
@hex = Hash.new

1.upto(1000000) do |x|
	temp = x * (x+1) / 2
	@triang[temp] = temp
	temp = x * (3*x-1)/2
	@pent[temp] = temp
	temp = x * (2 * x - 1)
	@hex[temp] = temp
end

def jumper(number)
	if @pent[number] != nil && @hex[number] != nil
		puts number
	end
end

@triang.each do |x, y|
	jumper(y)
end