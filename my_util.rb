start = Time.now

coins = [2,3,5,7]

amount = 10
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

print ways[amount]

puts Time.now-start