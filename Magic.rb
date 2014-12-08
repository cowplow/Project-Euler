decks = ["naya", "GWr", "UR", "Bant Pants", "Reanimator", "UWR", "GRb", "RUG"]

@prng = Random.new

39.times do |x|
	num = decks[@prng.rand(0..decks.length-1)]
	puts "#{x} #{num}"
end