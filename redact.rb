puts "Text to search through: "
text = gets.chomp
text.downcase!

puts "Words to redact: "
redact = gets.chomp

words = text.split(" ")
rwords = redact.split(" ")

words.each do |x|
        unless rwords.include?("#{x.downcase}") || rwords.include?("#{x.upcase}")
            print "#{x} "
        else
            print "REDACTED "
        end
end