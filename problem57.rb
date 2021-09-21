# October 22nd is CAPS LOCK DAY. Apart from that day, every sentence should be lowercase, so write a  function to normalize a sentence. 
# Create a function that takes a string. If the string is all uppercase characters, convert it to lowercase and add  an exclamation mark at the end.
# Examples 
# normalize("CAPS LOCK DAY IS OVER") ➞ "Caps lock day is over!" 
# normalize("Today is not caps lock day.") ➞ "Today is not caps lock day." 
# normalize("Let us stay calm, no need to panic.") ➞ "Let us stay calm, no need to panic."

def normalize(str)
    if str.include?(str.upcase)
        str.downcase!
        str = str+"!"
    else
        return str
    end
end
p normalize("CAPS LOCK DAY IS OVER")
p normalize("Today is not caps lock day.")
p normalize("Let us stay calm, no need to panic.")