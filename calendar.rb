require "date"

def days_in_month(year, month)
  Date.new(year.to_i, month.to_i, -1).strftime("%d")
end

def weekday(year, month, date)
  Date.new(year.to_i, month.to_i, date.to_i).strftime("%A")
end

def month_by_year(year, month)
  a = days_in_month(year, month)
  for i in 1..a
    weekday(year, month, date)
  end
end

puts "Enter Year"
year = gets.chomp
puts "Enter Month"
month = gets.chomp
puts "Enter Date"
date = gets.chomp
puts "-" * 20
puts "Outputs"
p days_in_month(year, month)
p weekday(year, month, date)

p Date::ABBR_MONTHNAMES[1..-1]
p month_by_year(year, month)
