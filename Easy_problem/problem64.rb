# Remove enemies from the array of people, even if the enemy shows up twice.
# Examples 
# remove_enemies(["Fred"], []) ➞ ["Fred"] 
# remove_enemies(["Adam", "Emmy", "Tanya", "Emmy"], ["Emmy"]) ➞ ["Adam", "Tanya"] remove_enemies(["John", "Emily", "Steve", "Sam"], ["Sam", "John"]) ➞ ["Emily", "Steve"] 
def remove_enemies(names, enemies)
	names - enemies
end
 p remove_enemies(["Fred"], [])
 p remove_enemies(["Adam", "Emmy", "Tanya", "Emmy"], ["Emmy"])
 p remove_enemies(["John", "Emily", "Steve", "Sam"], ["Sam", "John"]) 