def triplet?( a, b, c )
	
	a * a + b* b == c * c

end


(333..1000).each do |c|
	(1..500).each do |b|
		(1..334).each do |a|
			if a<b && b<c
				if triplet?(a,b,c)
					answer = a * b * c
					puts "#{answer}"
					exit
				end
			end
		end
	end
end