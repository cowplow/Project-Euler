coins = [1, 2, 5, 10, 20, 50, 100 , 200]
amount = 200
ways = []
0.upto(amount) do |x|
	ways << 0
end
ways[0] = 1

0.upto(7) do |i|
	coins[i].upto(amount) do |j|
		ways[j] += ways[j-coins[i]]
	end
end

print ways[amount]