# Create a function that takes time1 and time2 and return how many hours have passed between the two times.
# Examples
# hours_passed("3:00 AM", "9:00 AM") ➞ "6 hours"

# hours_passed("2:00 PM", "4:00 PM") ➞ "2 hours"

# hours_passed("1:00 AM", "3:00 PM") ➞ "14 hours"
# Notes
#     • time1will always be the starting time and time2 the ending time.
#     • Return "no time passed" if time1 is equal to time2.


require "time"

def hours_passed(time1, time2)
  return "no time passed" if time1 == time2
  "#{(Time.parse(time2) - Time.parse(time1)).to_i / 3600} hours"
end
p hours_passed("1:00 AM", "3:00 PM")