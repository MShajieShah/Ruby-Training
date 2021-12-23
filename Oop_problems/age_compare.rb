# Create a method in the Person class which returns how another person's age compares. Given the objects p1, p2 and p3, which will be initialised with the attributes name and age, return a sentence in the following format:

# {other_person} is {older than / younger than / the same age as} me.

# Examples
# p1 = Person.new("Samuel", 24)
# p2 = Person.new("Joel", 36)
# p3 = Person.new("Lily", 24)
# p1.compare_age(p2) ➞ "Joel is older than me."

# p2.compare_age(p1) ➞ "Samuel is younger than me."

# p1.compare_age(p3) ➞ "Lily is the same age as me."

class Person
  attr_accessor :name
  attr_accessor :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def compare_age(age2)
    "#{age2.name} is #{["the same age as", "younger than", "older than"][self.age <=> age2.age]} me."
  end
end

p1 = Person.new("Shajie", 23)
p2 = Person.new("Imran", 25)
p3 = Person.new("Noman", 36)
p p1.compare_age(p2)
p p2.compare_age(p1)
p p1.compare_age(p3)
