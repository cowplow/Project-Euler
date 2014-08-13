start = Time.now
@prng = Random.new

nums = Hash.new()

1.upto(40) do |x|
	nums[x] = 0
end
cur_location = 1
doublecounter = 0

def community_chest(cur_location)
	chest = @prng.rand(1..16)
	if chest == 1
		return 1
	elsif chest == 2
		return 11
	else
		return cur_location
	end
end

def chance(cur_location)
	hotdice = @prng.rand(1..16)
	case hotdice
	when 1
		return 1
	when 2
		return 11
	when 3
		return 12
	when 4
		return 25
	when 5
		return 40
	when 6
		return 6
	when 7 || 8
		if cur_location == 37
			return 6
		elsif cur_location == 8
			return 16
		else
			return 25
		end
	when 9
		if cur_location == 8 || cur_location == 37
			return 13
		else
			return 29
		end
	when 10
		if cur_location == 37
			cur_location = 34
			return community_chest(cur_location)
		else
			cur_location -= 3
			return cur_location
		end
	else
		return cur_location
	end
end

1000000.times do
	t1 = @prng.rand(1..4)
	t2 = @prng.rand(1..4)
	if t1 == t2
		doublecounter += 1
		if doublecounter == 3
			cur_location = 11
			nums[11] += 1
			next
		end
	else
		doublecounter = 0
	end
	sum = t1 + t2
	cur_location += sum
	if cur_location > 40
		cur_location -= 40
	end
	if cur_location == 31
		cur_location = 11
	end
	if cur_location == 3 || cur_location == 18 || cur_location == 34
		cur_location = community_chest(cur_location)
	end
	if cur_location == 8 || cur_location == 23 || cur_location == 37
		cur_location = chance(cur_location)
	end

	nums[cur_location] += 1
end

first = [3, 3]
second = [2, 2]
third = [1, 1]

nums.each do |key, value|
	if nums[key] > first[1]
		third = second
		second = first
		first = [key, value]
	elsif nums[key] > second[1]
		third = second	
		second = [key, value]
	elsif nums[key] > third[1]
		third = [key, value]
	end
end

puts "First: #{first[0]}"
puts "Second: #{second[0]}"
puts "Thrid: #{third[0]}"
puts Time.now - start	