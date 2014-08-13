start = Time.now

big = 2
counter = 3
mask = [2,3]
2.upto(99) do |x|
    if counter % 3 == 0
        mask << big
        big += 2
    else
        mask << 1
    end
    counter += 1
end

2.upto(mask.length-1) do |x|
    if mask[x] > 1
        temp = mask[x-1]*mask[x]+mask[x-2]
        mask[x] = temp
    else
        temp = mask[x-1]+mask[x-2]
        mask[x] = temp
    end
end

str = mask[-1].to_s.split("")

sum = 0

str.each do |x|
    sum += x.to_i
end


puts sum

puts Time.now-start