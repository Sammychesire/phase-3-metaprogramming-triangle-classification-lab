class Triangle
  # write code here
  attr_accessor :length,:width,:height 

  def initialize(length,width,height)
    @length = length
    @width = width
    @height = height
  end

  def kind
    if length <= 0|| width <= 0 || height <= 0 || length + height <= width || length + width <= height || height + width <= length
      raise TriangleError
  end
  if height == width && width == length
    return :equilateral
  elsif length == width || width == height || length == height
    return :isosceles
  else
    return :scalene
end
end

class TriangleError < StandardError
end

end