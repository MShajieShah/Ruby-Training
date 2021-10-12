require "date"

def days_by_month(year, month)
  a = Date.new(year, month, -1).day
  j = Hash.new
  for i in 1..a
    j[i] = Date.new(year, month, i).strftime("%A")
  end
  j
end

def month_by_year(year)
  k = Hash.new
  k[year] = Hash.new
  for i in 1..12
    k[year][(Date.new(year, i).strftime("%B")) + " #{year} "] = days_by_month(year, i)
  end
  k
end

puts "Enter Year"
year = gets.chomp.to_i
puts "------------------------"
puts "| Calendar Of The Year |"
puts "------------------------"

if year.digits.count == 4
  p month_by_year(year)
elsif year.digits.count == 2
  if year == 70
    p "Re-confirm your Year 1970 or 2070"
    year = gets.chomp.to_i
    p month_by_year(year)
  else
    if year.to_i >= 71 && year.to_i <= 99
      year = ("19" + "#{year}").to_i
      p month_by_year(year)
    else year >= 99 && year <= 69
      year = ("20" + "#{year}").to_i
      p month_by_year(year)     end
  end
else
  p "Year is not correct"
end
p "Do you want to search a month? Press 'y' for yes or any key to quit!!!"
c = gets.chomp
if c.downcase == "y"
  p "Enter a Month from 1-12"
  month = gets.chomp.to_i
  p days_by_month(year, month)
end
