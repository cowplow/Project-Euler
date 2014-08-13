def triplet?( a, b, c )
	
	a * a + b* b == c * c

end

@answers = Hash.new

(3..501).each do |c|
	(2..500).each do |b|
		(1..334).each do |a|
			if a<b && b<c
				if triplet?(a,b,c)
					answer = a + b + c
					if answer < 1000
						if @answers[answer] == nil
							@answers[answer] = 1
						else
							@answers[answer] = @answers[answer] + 1
						end
					end
				end
			end
		end
	end
end

temp = 0
final = [0,0]

@answers.each do |key, value|
	if value > final[1]
		final.clear
		final << key
		final << value
	end
end

puts final[0]