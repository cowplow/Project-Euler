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
        (@prime_list[-1] + 2).upto(root) do |i|
                if isPrime( i )
                        @prime_list.push( i )
                        if i > root or num % i == 0
                                return false
                        end
                end
        end

        return true
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

@loop_count = 1
@primes = 0
@total_nums = 1
@list = []

def corners(number)
        cur_number = (number**2)

        3.times do |x|
                cur_number -= (@loop_count*2-2)
                if isPrime(cur_number)
                        @primes += 1
                        @list << [cur_number, @loop_count]
                end
        end
        @total_nums += 4
        return @primes.to_f/@total_nums
end

i = 3

ratio = 1.0

while ratio > 0.1
        @loop_count +=1
        ratio = corners(i)
        if ratio < 0.1
                break
        end
        i += 2
end

puts i

