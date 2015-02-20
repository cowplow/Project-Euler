start = Time.now
blue_discs = 707106800000.0

def prob_two_blue_disc(b, r)
  (b / (b+r)) * ((b-1.0)/(b+r-1.0))
end

@answer = []

def attack_pattern(num)

  min_red = ((num / 0.7071067812100046 ) - num).to_i
  max_red = ((num / 0.60) - num).to_i

  min_red.upto(max_red) do |x|
    prob = prob_two_blue_disc(num, x.to_f)

    if prob == 0.5
      if num + x >= 1000000000000
        puts "#{prob} --> #{num}"
        @answer << [num, x]
      end
    elsif prob < 0.5
      break
    end
  end
end

blue_discs.to_i.upto(blue_discs.to_i+1000000) do |x|
  attack_pattern(x.to_f)
end

@answer.each do |x, y|
  puts "Blue Discs: #{x}, Total Discs: #{x + y}"
end

puts Time.now - start



