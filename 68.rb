start = Time.now

subsets = []

answer = 0

3.upto(10) do |a|
	2.upto(a-1) do |b|
		1.upto(b-1) do |c|
			if a + b + c == 14
				subsets << [a,b,c]
			end
		end
	end
end

big_arr = []

0.upto(subsets.length-1) do |x|
	perms = subsets[x].permutation.to_a
	big_arr << perms
end

0.upto(big_arr.length-1) do |x|
	0.upto(big_arr[x].length-1) do |y|
		solutions = Hash.new
		solutions[1] = big_arr[x][y][0]
		solutions[6] = big_arr[x][y][1]
		solutions[7] = big_arr[x][y][2]

		used = Hash.new
		used[solutions[1]] = solutions[1]
		used[solutions[6]] = solutions[6]
		used[solutions[7]] = solutions[7]

		seconds = []

		0.upto(big_arr.length-1) do |a|
			if x == a
				next
			end
			0.upto(big_arr[x].length-1) do |b|
				if big_arr[a][b][1] != solutions[7]
					next
				elsif big_arr[a][b][0] == used[big_arr[a][b][0]] or big_arr[a][b][2] == used[big_arr[a][b][2]]
					next
				end

				two = [big_arr[a][b][0],big_arr[a][b][2]]
				seconds << two
			end

			0.upto(seconds.length-1) do |c|
				thirds = []
				solutions[2] = seconds[c][0]
				solutions[8] = seconds[c][1]
				used[solutions[2]] = solutions[2]
				used[solutions[8]] = solutions[8]

				0.upto(big_arr.length-1) do |d|
					if x == d or d == a
						next
					end
					0.upto(big_arr[x].length-1) do |e|
						if big_arr[d][e][1] != solutions[8]
							next
						elsif big_arr[d][e][0] == used[big_arr[d][e][0]] or big_arr[d][e][2] == used[big_arr[d][e][2]]
							next
						end

						three = [big_arr[d][e][0],big_arr[d][e][2]]
						thirds << three
					end

					0.upto(thirds.length-1) do |f|
						fourths = []
						solutions[3] = thirds[f][0]
						solutions[9] = thirds[f][1]
						used[solutions[3]] = solutions[3]
						used[solutions[9]] = solutions[9]

						0.upto(big_arr.length-1) do |g|
							if x == g or g == a or g == d
								next
							end
							0.upto(big_arr[x].length-1) do |h|
								if big_arr[g][h][1] != solutions[9]
									next
								elsif big_arr[g][h][0] == used[big_arr[g][h][0]] or big_arr[g][h][2] == used[big_arr[g][h][2]]
									next
								end

								four = [big_arr[g][h][0],big_arr[g][h][2]]
								fourths << four
							end

							0.upto(fourths.length-1) do |i|
								fifths = []
								solutions[4] = fourths[f][0]
								solutions[10] = fourths[f][1]
								used[solutions[4]] = solutions[4]
								used[solutions[10]] = solutions[10]

								0.upto(big_arr.length-1) do |j|
									if x == j or j == a or j == d or j == g
										next
									end
									0.upto(big_arr[x].length-1) do |k|
										if big_arr[j][k][1] != solutions[10]
											next
										elsif big_arr[j][k][0] == used[big_arr[j][k][0]] or big_arr[j][k][2] == used[big_arr[j][k][2]]
											next
										end

										five = [big_arr[j][k][0],big_arr[j][k][2]]
										fifths << five
									end
									1.upto(10) do |l|
										if used[l] == nil
											solutions[5] = l
										end
									end
									almost = ""
									if solutions[1] + solutions[6] + solutions[7] == 14 and solutions[2] + solutions[7] + solutions[8] == 14 and solutions[3] + solutions[8] + solutions[9] == 14 and solutions[4] + solutions[9] + solutions[10] == 14 and solutions[5] + solutions[10] + solutions[6] == 14
										uno = "#{solutions[1]}#{solutions[6]}#{solutions[7]}".to_i
										dos = "#{solutions[2]}#{solutions[7]}#{solutions[8]}".to_i
										tres = "#{solutions[3]}#{solutions[8]}#{solutions[9]}".to_i
										quatro = "#{solutions[4]}#{solutions[9]}#{solutions[10]}".to_i
										cinq = "#{solutions[5]}#{solutions[10]}#{solutions[6]}".to_i
										almost = ""
										if uno < dos and uno < tres and uno < quatro and uno < cinq
											almost = "#{solutions[1]}#{solutions[6]}#{solutions[7]}#{solutions[2]}#{solutions[7]}#{solutions[8]}#{solutions[3]}#{solutions[8]}#{solutions[9]}#{solutions[4]}#{solutions[9]}#{solutions[10]}#{solutions[5]}#{solutions[10]}#{solutions[6]}"
										elsif dos < uno and dos < tres and dos < quatro and dos < cinq
											almost = "#{solutions[2]}#{solutions[7]}#{solutions[8]}#{solutions[3]}#{solutions[8]}#{solutions[9]}#{solutions[4]}#{solutions[9]}#{solutions[10]}#{solutions[5]}#{solutions[10]}#{solutions[6]}#{solutions[1]}#{solutions[6]}#{solutions[7]}"
										elsif tres < uno and tres < dos and tres < quatro and tres < cinq
											almost = "#{solutions[3]}#{solutions[8]}#{solutions[9]}#{solutions[4]}#{solutions[9]}#{solutions[10]}#{solutions[5]}#{solutions[10]}#{solutions[6]}#{solutions[1]}#{solutions[6]}#{solutions[7]}#{solutions[2]}#{solutions[7]}#{solutions[8]}"
										elsif quatro < uno and quatro < dos and quatro < tres and quatro < cinq
											almost = "#{solutions[4]}#{solutions[9]}#{solutions[10]}#{solutions[5]}#{solutions[10]}#{solutions[6]}#{solutions[1]}#{solutions[6]}#{solutions[7]}#{solutions[2]}#{solutions[7]}#{solutions[8]}#{solutions[3]}#{solutions[8]}#{solutions[9]}"
										elsif cinq < uno and cinq < dos and cinq < tres and cinq < quatro
											almost = "#{solutions[5]}#{solutions[10]}#{solutions[6]}#{solutions[1]}#{solutions[6]}#{solutions[7]}#{solutions[2]}#{solutions[7]}#{solutions[8]}#{solutions[3]}#{solutions[8]}#{solutions[9]}#{solutions[4]}#{solutions[9]}#{solutions[10]}"
										end
											
									end
									if almost.length == 16 and almost.to_i > answer
										answer = almost.to_i
									end

								end
							end
						end
					end
				end

				
			end
		end
	end
end

puts answer
puts Time.now - start
