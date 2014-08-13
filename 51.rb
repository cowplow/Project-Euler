start = Time.now
@nums = []
@masks = ["a","a","a","b","c","d"] #a is the number that will change, d is the last number (1,3,7,9)

@masks = @masks.permutation(6).to_a

@masks.delete_if do |x|
	x[-1] != "d"
end

#Maps all of the possible 3 digit combinations for a potential answer 
#while disregarding the numbers to change
def combos(number)
	0.upto(9) do |x|
		0.upto(9) do |y|
			if (x+y+number) % 3 != 0
				@nums << [x, y, number]
			end
		end
	end
end

combos(1)
combos(3)
combos(7)
combos(9)


#takes a set [b,c,d] and applies the numbers over the masks
def filler(arr)
	tempArr = @masks.clone
	newArr = Hash.new
	tempArr.each do |x|
		temp = x.clone
		0.upto(5) do |y|
			case x[y]
			when "b"
				temp.fill(arr[0], y, 1)
			when "c"
				temp.fill(arr[1], y, 1)
			when "d"
				temp.fill(arr[2], y, 1)
			end
		end
		temp = temp.join("")
		if newArr[temp] == nil
			newArr[temp] = temp
		end
	end
	return newArr
end

def prime?( number )
	if number % 2 == 0
		return false
	end
	root = Math.sqrt(number).to_i

	i = 3
	while i <= root
		if number % i == 0
			return false
		end
		i += 2
	end
	true
end

@firstPrime = 0

#adds the zeroes over the masks, and checks to see how many primes are in the set
def replace(arr, indicies)
	counter = 0
	
	0.upto(9) do |x|
		temp = arr
		temp.fill(x.to_s, indicies[0], 1)
		temp.fill(x.to_s, indicies[1], 1)
		temp.fill(x.to_s, indicies[2], 1)
		num = temp.join("").to_i

		if prime?(num) && counter == 0
			@firstPrime = num
			counter += 1
		elsif prime?(num)
			counter += 1
		end
	end
	return counter
end

tempHash = Hash.new

#for each potenial [b,c,d], determine where the numbers to be replaced in each mask are
#and check it to see if there are 8 primes in the series
#currently 6, for testing no idea why it do what it do
i = 0
while i < @nums.length

	tempHash = filler(@nums[i])
	tempHash.each do |key, value|
		tempArr = tempHash[key].split("")
		indicies = []
		0.upto(tempArr.length-1) do |y|
			if tempArr[y] == "a"
				indicies << y
			end
		end

		checker = replace(tempArr, indicies)

		if checker == 8
			puts "#{@firstPrime} => #{value} "
		end
	end
	i += 1
end

puts Time.now - start

















