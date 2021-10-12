# In this challenge, you are given a date and you have to determine the correspondent season in a certain  hemisphere of Earth.
# You have to use the ranges given by the meteorological seasons definition, accordingly to the following  table:
# Start End North Hemisphere South Hemisphere March, 1 May, 31 Spring Autumn
# June, 1 August, 31 Summer Winter
# September, 1 November, 30 Autumn Spring
# December, 1 February, 28*** Winter Summer
# Given two strings hemisphere (can be "N" for the North hemisphere or "S" for the South hemisphere) and  date (name and day of the month), implement a function that returns a string with the season name,  accordingly to the above table.
# Examples
# hemisphere_season("N", "June, 30") ➞ "Summer"
# hemisphere_season("N", "March, 1") ➞ "Spring"
# hemisphere_season("S", "September, 22") ➞ "Spring"

def hemisphere_season(hemisphere, date)
  month = date.split(",")[0]
  if ["March", "April", "May"].include? month
    if hemisphere == "N"
      return "Spring"
    else
      return "Autumn"
    end
  elsif ["June", "July", "August"].include? month
    if hemisphere == "N"
      return "Summer"
    else
      return"Winter"
    end
  elsif ["September", "October", "November"].include? month
    if hemisphere == "N"
      return "Autumn"
    else
      return "Spring"
    end
  else
    if hemisphere == "N"
      return "Winter"
    else
      return "Summer"
    end
  end
end

p hemisphere_season("N", "June, 30")
