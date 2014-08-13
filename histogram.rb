puts "Please give me a sentance: "
text = gets.chomp

words = text.split

frequencies = Hash.new(0)

words.each do |x|
    frequencies[x] +=1
end

frequencies = frequencies.sort_by { |k, v| v }

frequencies.reverse!

frequencies.each do |k, v|  
    puts "#{v} #{k.to_s}" 
end