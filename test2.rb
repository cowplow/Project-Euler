@grid = "131,673,234,103,18
201,96,342,965,150
630,803,746,422,111
537,699,497,121,956
805,732,524,37,331"

@grid = @grid.split("\n").collect do |line|
   line.split(",").collect do |n|
      n.to_i
   end
end

0.upto(4) do |x|
   @grid[x].push(5000000)
end

@grid.push([])

6.times do |x|
   @grid[5].push(5000000)
end

def checkdown(x, y, val2)
   i = false
   counter = 1
   current = 5645768754354
   first = 5645768754354
   if @grid[x+counter] == nil
      return current
   else
      current = @grid[x][y] + @grid[x+counter][y] + @grid[x+counter][y+1]
   end
   while i == false do
      counter += 1
      if @grid[x+counter] == nil
         return current
      else 
         temp = current + @grid[x+counter][y] + @grid[x+counter][y+1] - @grid[x+counter-1][y+1]
      end
      if current < temp
         if @grid[x+counter+1] == nil
            return current
         else
            temp = temp - @grid[x+counter][y+1] + @grid[x+counter+1][y] +@grid[x+counter+1][y+1]
            if current < temp
               return current
            else
               return temp
            end
         end 
      else
         current = temp
      end
   end
end



(@grid.length-2).downto(0) do |y|
   0.upto(@grid.length-2) do |x|
      if x == 0
         val1 = 560000000000
      else
         val1 = @grid[x-1][y]
      end

      val2 = @grid[x][y] + @grid[x][y+1]

      val3 = checkdown(x,y,val2)
      if val1 <= val2 && val1 <= val3
         @grid[x][y] += val1
      elsif val2 <= val1 && val2 <= val3
         @grid[x][y] = val2
      else
         @grid[x][y] += val3
      end
   end
end

answer = 45345345345345345

0.upto(@grid.length-2) do |x|
   if @grid[x][0] < answer
      answer = @grid[x][0]
   end
end

puts answer % 5000000