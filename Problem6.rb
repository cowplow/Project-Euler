sum_of_sq = 0
sq_of_sum = 0

(1..100).each do |i|
	sum_of_sq += i*i
end

(1..100).each do |h|
	sq_of_sum += h
end

sq_sum = sq_of_sum*sq_of_sum

Diff = sq_sum - sum_of_sq

puts "#{Diff}"
