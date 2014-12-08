start = Time.now

@matrix = "Grid 01
003020600
900305001
001806400
008102900
700000008
006708200
002609500
800203009
005010300
Grid 02
200080300
060070084
030500209
000105408
000000000
402706000
301007040
720040060
004010003
Grid 03
000000907
000420180
000705026
100904000
050000040
000507009
920108000
034059000
507000000
Grid 04
030050040
008010500
460000012
070502080
000603000
040109030
250000098
001020600
080060020
Grid 05
020810740
700003100
090002805
009040087
400208003
160030200
302700060
005600008
076051090
Grid 06
100920000
524010000
000000070
050008102
000000000
402700090
060000000
000030945
000071006
Grid 07
043080250
600000000
000001094
900004070
000608000
010200003
820500000
000000005
034090710
Grid 08
480006902
002008001
900370060
840010200
003704100
001060049
020085007
700900600
609200018
Grid 09
000900002
050123400
030000160
908000000
070000090
000000205
091000050
007439020
400007000
Grid 10
001900003
900700160
030005007
050000009
004302600
200000070
600100030
042007006
500006800
Grid 11
000125400
008400000
420800000
030000095
060902010
510000060
000003049
000007200
001298000
Grid 12
062340750
100005600
570000040
000094800
400000006
005830000
030000091
006400007
059083260
Grid 13
300000000
005009000
200504000
020000700
160000058
704310600
000890100
000067080
000005437
Grid 14
630000000
000500008
005674000
000020000
003401020
000000345
000007004
080300902
947100080
Grid 15
000020040
008035000
000070602
031046970
200000000
000501203
049000730
000000010
800004000
Grid 16
361025900
080960010
400000057
008000471
000603000
259000800
740000005
020018060
005470329
Grid 17
050807020
600010090
702540006
070020301
504000908
103080070
900076205
060090003
080103040
Grid 18
080005000
000003457
000070809
060400903
007010500
408007020
901020000
842300000
000100080
Grid 19
003502900
000040000
106000305
900251008
070408030
800763001
308000104
000020000
005104800
Grid 20
000000000
009805100
051907420
290401065
000000000
140508093
026709580
005103600
000000000
Grid 21
020030090
000907000
900208005
004806500
607000208
003102900
800605007
000309000
030020050
Grid 22
005000006
070009020
000500107
804150000
000803000
000092805
907006000
030400010
200000600
Grid 23
040000050
001943600
009000300
600050002
103000506
800020007
005000200
002436700
030000040
Grid 24
004000000
000030002
390700080
400009001
209801307
600200008
010008053
900040000
000000800
Grid 25
360020089
000361000
000000000
803000602
400603007
607000108
000000000
000418000
970030014
Grid 26
500400060
009000800
640020000
000001008
208000501
700500000
000090084
003000600
060003002
Grid 27
007256400
400000005
010030060
000508000
008060200
000107000
030070090
200000004
006312700
Grid 28
000000000
079050180
800000007
007306800
450708096
003502700
700000005
016030420
000000000
Grid 29
030000080
009000500
007509200
700105008
020090030
900402001
004207100
002000800
070000090
Grid 30
200170603
050000100
000006079
000040700
000801000
009050000
310400000
005000060
906037002
Grid 31
000000080
800701040
040020030
374000900
000030000
005000321
010060050
050802006
080000000
Grid 32
000000085
000210009
960080100
500800016
000000000
890006007
009070052
300054000
480000000
Grid 33
608070502
050608070
002000300
500090006
040302050
800050003
005000200
010704090
409060701
Grid 34
050010040
107000602
000905000
208030501
040070020
901080406
000401000
304000709
020060010
Grid 35
053000790
009753400
100000002
090080010
000907000
080030070
500000003
007641200
061000940
Grid 36
006080300
049070250
000405000
600317004
007000800
100826009
000702000
075040190
003090600
Grid 37
005080700
700204005
320000084
060105040
008000500
070803010
450000091
600508007
003010600
Grid 38
000900800
128006400
070800060
800430007
500000009
600079008
090004010
003600284
001007000
Grid 39
000080000
270000054
095000810
009806400
020403060
006905100
017000620
460000038
000090000
Grid 40
000602000
400050001
085010620
038206710
000000000
019407350
026040530
900020007
000809000
Grid 41
000900002
050123400
030000160
908000000
070000090
000000205
091000050
007439020
400007000
Grid 42
380000000
000400785
009020300
060090000
800302009
000040070
001070500
495006000
000000092
Grid 43
000158000
002060800
030000040
027030510
000000000
046080790
050000080
004070100
000325000
Grid 44
010500200
900001000
002008030
500030007
008000500
600080004
040100700
000700006
003004050
Grid 45
080000040
000469000
400000007
005904600
070608030
008502100
900000005
000781000
060000010
Grid 46
904200007
010000000
000706500
000800090
020904060
040002000
001607000
000000030
300005702
Grid 47
000700800
006000031
040002000
024070000
010030080
000060290
000800070
860000500
002006000
Grid 48
001007090
590080001
030000080
000005800
050060020
004100000
080000030
100020079
020700400
Grid 49
000003017
015009008
060000000
100007000
009000200
000500004
000000020
500600340
340200000
Grid 50
300200000
000107000
706030500
070009080
900020004
010800050
009040301
000702000
000008006"

#makes an array for each of the grids
grid = @matrix.split("G")

#deletes the "" character at the start
grid.delete(grid[0])

#an array to store the problem grids
@problems = []

def sudoku(grid)

	#an array of rows, split on the new line character, further split into individual characters
	#stored as a 2 dimensional array. First [] = Row, Second [] = Column
	@row = grid.split("\n").collect do |x|
		x.split("").collect.to_a
	end

	#represents the number of the current puzzle being worked on
	@face = "#{@row[0][4]}#{@row[0][5]}"

	#deletes the Grid XX row, so only numbers are left over.
	@row.delete(@row[0])

	#an array of columns
	@column = []

	#populate the columns array, wondering if this is necessary
	0.upto(8) do |x|
		arr = []
		#check each row, and add the character in the first column.  
		#Start at top far left work down then right.
		@row.each do |y|
			arr << y[x]
		end
		@column << arr
	end

	puts @face
	if solve(@row,@column) == false
		#guess()
	else
		@row.each do |x|
			print x
			print "\n"
		end
	end
	print "\n"	
end

def solve(h, v)
	face = "#{h[0][4]}#{h[0][5]}"
	15.times do |i|
		#If no changes took place on one of the iterations, I want to see if the puzzle is solved.
		#If logic fails, I will have to guess.
		change = 0

		1.upto(9) do |x|
			#converts current loop number to a string for comparing to puzzle
			number = x.to_s
			#r represents top, middle and bottom rows
			#c represents left, middle and right columns
			1.upto(3) do |r|
				1.upto(3) do |c|
					#an array of the boxes, followed by rows and index of "#" in the row
					row = check_row(number, r)
					#an array of the boxes, followed by columns and index of "#" in the columns
					column = check_column(number,c)
					change += triangulate(row,column,number)
					line_down(number)
					line_across(number)
				end
			end
		end

		test_row = h
		test_column = v
=begin
		if change == 0
			@row.each do|x|
				if x.include?("0")
					guess(test_row, test_column)
				end
			end
		end
=end
	end
	h.each do |x|
		if x.include?("0")
			@problems << face
			#print "\n"
			return false
		end
	end
	return true
end


def guess()
	#receive the row and the column
	#make a copy of them (hope to not get screwed by pass by reference nonsense)
	#make a hash of row numbers and list the missing numbers in each row
	#loop through each element of the hash with missing numbers
	#make an array of the missing numbers, and then permutate all the different possibilities
	#loop through the array, altering the missing numbers in the row with the numbers from the array
	#check to see if it solves, if it does, pass back to sudoku as a success
	#if it doesn't set the row back to 0s and try the next one.
	row_num = Hash.new
	empty = Hash.new

	0.upto(8) do |x|
		arr = []
		1.upto(9) do |y|
			num = y.to_s
			if @row[x].include?(num) == false
				arr << num
			end
		end
		row_num[x] = arr
	end

	0.upto(8) do |x|
		arr = []
		0.upto(8) do |y|
			if @row[x][y] == "0"
				arr << y
			end
		end
		empty[x] = arr
	end

	0.upto(8) do |x|
		row_num[x] = row_num[x].permutation.to_a
	end

	
	0.upto(8) do |x|
		row_num[x].each do |y|
			0.upto(y.length-1) do |z|
				@row[x][empty[x][z]] = y[z]
				@column[empty[x][z]][x] = y[z]
			end
			if solve(@row, @column) == true
				row.each do |x|
					print x
					print "\n"
					exit
				end
			else
				0.upto(y.length-1) do |k|
					@row[x][empty[x][k]] = "0"
					@column[empty[x][k]][x] = "0"
				end
			end
			puts row_num[x].index(y)
		end
	end
end


#A method to determine which boxes in a given quadrant contain
#the "#" and where in the row it is.
def check_row(number, box)
	
	xrange = Range.new(0,2)
	
	#1 = top row, 2 = middle row, 3 = bottom row
	case box
	when 1
		xrange = (0..2)
	when 2
		xrange = (3..5)
	else
		xrange = (6..8)
	end

	#unsure why the range is here
	#Gets passed [The row, and where in the row it was found]
	arr = [xrange]

	#if the row contains the current number being checked
	#pass the row and the index, store that info.
	xrange.each do |x|
		if @row[x].include?(number)
			arr << [x, @row[x].index(number)]
		end
	end
	#returns the range(?) and a list of where the number was found ex r1 c3, and r2 c4
	return arr
end


#A method to determine which boxes in a given quadrant contain
#the "#" and where in the column it is.
def check_column(number, box)
	xrange = Range.new(0,2)

	#1 = left column, #2 = middle column, #3 = right column
	case box
	when 1
		xrange = (0..2)
	when 2
		xrange = (3..5)
	else
		xrange = (6..8)
	end

	#Gets passed [The column, and where in the column it was found]
	arr = [xrange]

	#if the column contains the current number being checked
	#pass the column and the index, store that info.
	xrange.each do |x|
		if @column[x].include?(number)
			arr << [x, @column[x].index(number)]
		end
	end
	return arr
end

def triangulate(row, column, number)
	possible = []

	#rows containing the number
	bad_row = []

	#columns containing the number
	bad_column = []
	change = 0

	#assigns which rows contain the number
	1.upto(row.length-1) do |x|
		temp = row[x]
		tick = temp[0]
		bad_row << tick
	end

	#assigns which columns contain the number
	1.upto(column.length-1) do |x|
		temp = column[x]
		tick = temp[0]
		bad_column << tick
	end

	#the rows we are interested in: 0-2, 3-5, 6-8
	yrange = row[0]
	#the columns we are interested in: 0-2, 3-5, 6-8
	xrange = column[0]

	#checks to see if the number is already in this 'box'
	#if it isn't in the box and could possibly be in this location, make it a possibility
	xrange.each do |x|
		yrange.each do |y|
			val = @row[y][x]
			if val == number
				return change
			end
			if val == "0" && bad_row.include?(y) == false && bad_column.include?(x) == false
				possible << [y,x,val]
			end
		end
	end

	#if only 1 possible place for the number to go exists, then add the number to that spot.
	if possible.length == 1
		y = possible[0][0]
		x = possible[0][1]
		@row[y][x] = number
		@column[x][y] = number
		change += 1
	end
return change
end

@values = ["1","2","3","4","5","6","7","8","9"]

#a method to check if a column fills the 1-9 rule.
def line_down(number)
	0.upto(8) do |x|
		possible = []
		0.upto(8) do |y|
			val = @column[x][y]
			if val == number
				return
			elsif val == "0"
				possible << [x,y]
			end
		end

		if possible.length == 1
			y = possible[0][1]
			x = possible[0][0]
			@row[y][x] = number
			@column[x][y] = number
		end
	end
end

def line_across(number)
	0.upto(8) do |x|
		possible = []
		0.upto(8) do |y|
			val = @row[y][x]
			if val == number
				return
			elsif val == "0"
				possible << [x,y]
			end
		end

		if possible.length == 1
			y = possible[0][1]
			x = possible[0][0]
			@row[y][x] = number
			@column[x][y] = number
		end
	end
end





0.upto(49) do |x|
	sudoku(grid[x])
end

puts @problems.length

puts Time.now-start







