#A group of friends have decided to start a secret society. The name will be the first letter of each of their
#names, sorted in alphabetical order.
#Create a function that takes in an array of names and returns the name of the secret society.
#Examples
#society_name(["Adam", "Sarah", "Malcolm"]) ➞ "AMS"
def society_name(arr)
    arr.map{|i| i[0][0]}.join
end
p society_name(["Adam", "Sarah", "Malcolm"])
p society_name(["Harry", "Newt", "Luna", "Cho"])
p society_name(["Phoebe", "Chandler", "Rachel", "Ross", "Monica", "Joey"])