@month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
				
def leapYear?(year)
	if year % 4 == 0 && year % 400 == 0
		temp = true
	elsif year % 4 == 0 && year % 100 == 0
		temp = false
	elsif year % 4 == 0
		temp = true
	else
		temp = false
	end
	temp
end

def one_Day_At_A_Time
	cur_year = 1901
	cur_day = 2 #day of week
	cur_date = 1 #day in month
	cur_month = 1
	date_counter = 0

	leapYear = false

	until cur_year == 2000 && cur_month == 12 && cur_date == 31

		if cur_month == 12  && cur_date == 31
			cur_year += 1
			cur_month = 1
			cur_date = 0
			leapYear = leapYear?(cur_year)
		end

		if leapYear && cur_month == 2 && cur_date == 28
			cur_month += 1
			cur_date = -1
		end

		if cur_date == @month_days[cur_month-1]
			cur_month += 1
			cur_date = 0
		end

		cur_date += if
		
		1 cur_day == 7
			cur_day = 1
		else
			cur_day += 1
		end

		if cur_date == 1 and cur_day == 7
			date_counter += 1
		end

	end

	puts "Day of Week: #{cur_day}, #{cur_month}/#{cur_date}/#{cur_year}"
	puts date_counter
end

one_Day_At_A_Time
