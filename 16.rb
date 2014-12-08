r = 2

r = r**1000

s = r.to_s

t = s.split("")

y = 0

t.each do |x|
	y += x.to_i
end

puts y