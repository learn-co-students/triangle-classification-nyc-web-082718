class Triangle
  def initialize(*args)
    @l1 = args.sort[0]
    @l2 = args.sort[1]
    @l3 = args.sort[2]
  end

  def kind
    is_triangle = (@l3 < @l1 + @l2) && (@l1 > 0) && (@l2 > 0) && (@l3 > 0)

    if !is_triangle
      raise TriangleError
    else
      if @l1 == @l2 && @l1 == @l3
        :equilateral
      elsif [@l1, @l2, @l3].uniq.length == 2
        :isosceles
      else
        :scalene
      end
    end
  end

end

class TriangleError < StandardError
end
