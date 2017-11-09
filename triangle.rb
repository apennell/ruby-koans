# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # sort so first is definitely lowest number, last is highest
  x, y, z = [a, b, c].sort

  # all sides must be > 0
  # only need to check first side because if it's not a problem in the lowest one, won't be on the others either
  raise TriangleError.new("All sides of a triangle must be greater than 0.") if x <= 0

  # the sum of any 2 sides must be greater than the 3rd
  # only need to check sum of 2 smallest because that's where an error would occur first
  raise TriangleError.new("The sum of any two sides of a triangle must be greater than the third.") if x + y <= z
  
  # if no errors raised, we have a valid triangle and must determine what type
  if a == b && b == c
  	return :equilateral
  elsif a == b || a == c || b == c
  	return :isosceles
  else
  	return :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

