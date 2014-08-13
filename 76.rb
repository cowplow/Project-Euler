start = Time.now
coins = []
1.upto(99) do |x|
    coins << x
end

amount = 100

ways = []
0.upto(amount) do |x|
    ways << 0
end
ways[0] = 1

0.upto(coins.length-1) do |i|
    coins[i].upto(amount) do |j|
        ways[j] += ways[j-coins[i]]
    end
end


puts ways[amount]
puts Time.now-start




