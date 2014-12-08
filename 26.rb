require 'bigdecimal'

start = Time.now()

@period = 0

@answer = 0

7.upto(1000) do |x|

	r = BigDecimal.new("1.0")

	s = BigDecimal.new("#{x}")

	str = r.div(s,1200).to_s

	if str.length < 25
		next
	else
		find = str[20..24]
		puts x
		treasure = str.index(find,25)-20

		if treasure > @period
			@period = treasure
			@answer = x
		end
	end
end

puts "The answer is #{@answer} with a period of #{@period}"

puts Time.now - start
