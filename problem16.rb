#------------------------------------------------------------------------------------------------------------------------------
# Problem 16:
# Create a function that takes a string as an argument and returns a coded (h4ck3r 5p34k) version of the string.
# Examples
# hacker_speak("javascript is cool") ➞ "j4v45cr1pt 15 c00l"
# hacker_speak("programming is fun") ➞ "pr0gr4mm1ng 15 fun"
# hacker_speak("become a coder") ➞ "b3c0m3 4 c0d3r"
#---------------------------------------------------------------------------------------------------------------------------


def hacker_speak(str)
    a = ''
    str.each_char do |x|
        if x == 'a'
            a = a +'4'
        elsif x == 's'
            a = a + '5'  
        elsif x == 'e'
            a = a+'3'
        elsif x ==  'i'
            a = a + '1'
        elsif x == 'o'
            a = a + '0'
        else 
            a = a + x

        end
    end
end

p hacker_speak("javascript is cool")


