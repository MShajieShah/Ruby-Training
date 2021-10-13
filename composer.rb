# Write a Composer class that has three accessor methods:

# name
# dob
# country
# Add an additional class method .count which counts the total number of instances created.

# Examples
# # Just finished writing the Composer class
# Composer.count ➞ 0

# c1 = Composer.new("Ludvig van Beethoven", 1770, "Germany")
# Composer.count ➞ 1

# c2 = Composer.new("Wolfgang Amadeus Mozart", 1756, "Austria")
# c3 = Composer.new("Johannes Brahms", 1833, "Germany")
# Composer.count ➞ 3

class Composer
  attr_accessor :name
  attr_accessor :dob
  attr_accessor :country
  @@count = 0

  def initialize(name, dob, country)
    @name = name
    @dob = dob
    @country = country
    @@count += 1
  end

  def Composer.count
    @@count
  end
end

c1 = Composer.new("Ludvig van Beethoven", 1770, "Germany")
c2 = Composer.new("Ludvig", 1770, "Germany")
p Composer.count
