require 'pry'
class Triangle
  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind

    if !self.valid?
      raise TriangleError

    else
      if
       @l1 == @l2 && @l2 == @l3
        :equilateral
      elsif @l1 == @l2 || @l2 == @l3 || @l1 == @l3
        :isosceles
      else
        :scalene
      end
    end

  end

  def valid?
    @l1 > 0 &&
    @l2 > 0 &&
    @l3 > 0 &&
    @l1 + @l2 > @l3 &&
    @l2 + @l3 > @l1 &&
    @l1 + @l3 > @l2
  end

  class TriangleError < StandardError
    def message
      "not a triangle!"
    end
  end
end

# binding.pry
