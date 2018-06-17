class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a <= 0 || @b <=0 || @c <= 0 || @a + @b <= @c || @a + @c <= @b || @b + @c <= @a
      raise TriangleError
    elsif @a == @b && @a == @c
      :equilateral
    elsif @a == @b || @a == @c || @b == @c
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "check numbers"
    end
  end

end
