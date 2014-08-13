start = Time.now

def cfRoot(n)
    answer = []
    first = Math.sqrt(n).to_i
    if n == first ** 2
        return [first]
    else
        m = first
        answer << m
    end

    last = answer[-1]
    denom = n - last**2
    numRem = last
    while denom != 1
        coef = (first + numRem) / denom
        answer << coef
        tempNum = denom
        tempRem = coef * denom - numRem
        tempDenom = n - tempRem**2
        tempDenom /= tempNum
        denom = tempDenom
        numRem = tempRem
    end
    final = numRem + answer[0]
    answer << final
    return answer
end
        
numberOddPeriod = 0

2.upto(10000) do |i|
    temp = cfRoot(i)
    tlen = temp.length
    if tlen > 1
        period= tlen - 1
        if period % 2 == 1
            numberOddPeriod += 1
        end
    end
end

print "the answer is ", numberOddPeriod, "\n"
puts Time.now-start