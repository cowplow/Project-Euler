require 'bigdecimal'
start = Time.now
blue_discs = 707108295907.0
#707106802629
last = 707106849950

#puts last - blue_discs
#exit
#33460
#47320
#33460
#80781 last = 707108100882, discs = 707108020101
#33460 last = 707108134343, discs = 707108100883
#47320 last = 707108181664, discs = 707108134344
#33460 last = 707108215125, discs = 707108181665
#80781 last = 707108295907, discs = 707108215126
#21418
def prob_two_blue_disc(b, r)
  (b / (b+r)) * ((b-1.0)/(b+r-1.0))
end

def attack_pattern(num)

  min_red = ((num / 0.7071067812100046 ) - num).to_i
  #0.7071067812100046
  max_red = ((num / 0.60) - num).to_i

  min_red.upto(max_red) do |x|
    prob = prob_two_blue_disc(num, x.to_f)

    if prob == 0.5
      #puts Time.now - start
      #puts "#{num} + #{x} = #{num + x}"
      if num + x >= 1000000000000
        puts "#{prob_two_blue_disc(num, x)} --> #{num}"
        #exit
        @answer << [num, x]
      end
    elsif prob < 0.5
      break
    end

    #puts "#{prob_two_blue_disc(num, x)} --> #{num}"
  end
end

PATTERN = [33461, 80782, 33461, 47321]

total = 0


PATTERN.each do |p|
  total += p
end

30.times do
  blue_discs -= total
end


@answer = []


130.times do
  PATTERN.each do |p|
    blue_discs += p
    attack_pattern(blue_discs)
  end
end


@answer.each do |x, y|
  puts "Blue Discs: #{x}, Total Discs: #{x + y}"
end








