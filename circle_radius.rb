# Your task is to create a Circle constructor that creates a circle with a radius provided by an argument. The circles constructed must have two getters getArea() (PIr^2) and getPerimeter() (2PI*r) which give both respective areas and perimeter (circumference).

# For help with this class, I have provided you with a Rectangle constructor which you can use as a base example.

# Examples
# circy = Circle(11)
# circy.getArea()

# # Should return 380.132711084365

# circy = Circle(4.44)
# circy.getPerimeter()

# # Should return 27.897342763877365

class Circle
  @@PI = 3.1428

  def initialize(radius)
    @radius = radius
  end

  def get_area
    (@@PI * (@radius ** 2))
  end

  def get_perimeter
    (2 * @@PI * @radius)
  end
end

c = Circle.new(11)
p c.get_area()
c = Circle.new(4.44)
p c.get_perimeter()
