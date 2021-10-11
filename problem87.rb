# You are given an array of dates in the format Dec 11 and a month in the format Dec as arguments. 
# Each date represents a video that was uploaded on that day. Return the number of uploads for a 
# given month.
# Examples
# upload_count(["Sept 22", "Sept 21", "Oct 15"], "Sept")   2➞
# upload_count(["Sept 22", "Sept 21", "Oct 15"], "Oct")   1
def upload_count(dates, month)
  dates.reduce(0) { |sum, str| sum + (str.split[0] == month ? 1 : 0) }
end
p upload_count(["Sept 22", "Sept 21", "Oct 15"], "Sept") 
p upload_count(["Sept 22", "Sept 21", "Oct 15"], "Oct") 