start = Time.now
min = 1020304050607080900
max = 1929394959697989990

min_integer = Math.sqrt(min).to_i
max_integer = Math.sqrt(max).to_i

first = 1010101010

max = 1389026630

first.upto(max) do |x|
  num = x**2
  y = num.to_s
  if num % 1000000 == 0
    puts "#{num} => #{Time.now - start}"
  end
  if y[2] == "2" && y[4] == "3" && y[6] == "4" && y[8] == "5" && y[10] == "6" && y[12] == "7" && y[14] == "8" && y[16] == "9" && num % 10 == 0
    puts num
    puts "#{Math.sqrt(num)}"
    puts Time.now - start
    exit
  else
    next
  end
  
end
