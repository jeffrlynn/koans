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
  # raise TriangleError, "Side lengths must be greater than zero" if CONDITION
  raise TriangleError,\
    "side lengths must be greater than zero" \
    if (a <= 0) || (b <= 0) || (c <= 0)
  # raise TriangleError, "Side lenghts may not be negative" if CONDITION
  raise TriangleError, \
    "The addition of ant two side lenghts must be equal or greater than the third" \
    if (a+b <= c) || (a+c <= b) || (b+c <= a)
  if a == b && b == c
    return :equilateral
  elsif (a == b && a != c) || (a == c && a != b) || (b == c && b != a)
    return :isosceles
  elsif a != b && a != c && b != c
    return :scalene
  else
    raise TriangleError, "Invalid traingle"
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end