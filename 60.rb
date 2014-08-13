here = Time.now

@prime_list = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43,
47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107,
109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173,
179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239,
241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311,
313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383,
389, 397, 401, 409, 419, 421, 431, 433, 439, 443, 449, 457,
461, 463, 467, 479, 487, 491, 499, 503, 509, 521, 523, 541,
547, 557, 563, 569, 571, 577, 587, 593, 599, 601, 607, 613,
617, 619, 631, 641, 643, 647, 653, 659, 661, 673, 677, 683,
691, 701, 709, 719, 727, 733, 739, 743, 751, 757, 761, 769,
773, 787, 797, 809, 811, 821, 823, 827, 829, 839, 853, 857,
859, 863, 877, 881, 883, 887, 907, 911, 919, 929, 937, 941,
947, 953, 967, 971, 977, 983, 991, 997]

def isPrime( num )
        if num < 2
                return false
        end

        root = Math.sqrt(num)

        # Check all primes < 1000
        for i in @prime_list
                if i > root
                        return true
                end
                if num % i == 0
                        return false
                end
        end

        # Check remaining odd numbers starting with 1009 (first prime > 1000)
        @prime_list.each do |i|
                if isPrime( i )
                        #@prime_list.push( i )
                        if i > root or num % i == 0
                                return false
                        end
                end
        end

        return true
end

1009.upto(10000) do |x|
        if isPrime(x)
                @prime_list.push(x)
        end
end


def getNextPrime( number )
        if number % 2 == 0
                number += 1
        else
                number += 2
        end

        while not isPrime( number )
                number += 2
        end

        return number
end

@prime_pairs = [] 

0.upto(@prime_list.length-2) do |x|
        (x+1).upto(@prime_list.length-1) do |y|
                first = @prime_list[x].to_s
                first << @prime_list[y].to_s
                first = first.to_i
                if isPrime(first)
                        second = @prime_list[y].to_s
                        second << @prime_list[x].to_s
                        second = second.to_i
                        if isPrime(second)
                                @prime_pairs << [@prime_list[x], @prime_list[y]]
                        end
                end
        end
end

@first_nums = Hash.new
second_nums = []
prev_num = 0

@prime_pairs.each do |x, y|
        temp = []
        if prev_num != x
                if prev_num == 0
                        @first_nums[x] = nil
                else
                        second_nums.each do |z|
                                temp << z
                        end
                        @first_nums[prev_num] = temp
                        second_nums.clear
                        @first_nums[x] = nil
                end
        end
        second_nums << y
        prev_num = x
end

check = 0
sum = 0
ways = 0

def ravager(x, y)
        if @first_nums[x] == nil or y == nil
                return false
        end
        @first_nums[x].include?(y)
end

@triple = []


@first_nums.each do |key, values|
        temp = values
        if temp == nil
                break
        end
        0.upto(temp.length-2) do |x|
                (x+1).upto(temp.length-1) do |y|
                        if ravager(temp[x], temp[y])
                                @triple << [key,temp[x],temp[y]]
                        end
                end
        end
end

@quad = []

def quad(arr)

        @prime_list.each do |y|
                if @first_nums[arr[2]] == nil
                        next
                end
                if y < arr[0] || @first_nums[arr[0]].include?(y) == false
                        next
                elsif y < arr[1] || @first_nums[arr[1]].include?(y) == false
                        next
                elsif y < arr[2] || @first_nums[arr[2]].include?(y) == false
                        next
                end
                @quad << [arr[0],arr[1],arr[2],y]
        end
end


@fiver = []

def fiver(arr)

        @prime_list.each do |y|
                if @first_nums[arr[2]] == nil || @first_nums[arr[3]] == nil
                        next
                end
                if y < arr[0] || @first_nums[arr[0]].include?(y) == false
                        next
                elsif y < arr[1] || @first_nums[arr[1]].include?(y) == false
                        next
                elsif y < arr[2] || @first_nums[arr[2]].include?(y) == false
                        next
                elsif y < arr[3] || @first_nums[arr[3]].include?(y) == false
                        next
                end
                @fiver << [arr[0],arr[1],arr[2],arr[3],y]
        end
end

@triple.each do |x|
        quad(x)
end

@quad.each do |x|
        fiver(x)
end


print @fiver



puts Time.now - here