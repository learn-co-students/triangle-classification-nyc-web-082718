class Triangle
  attr_accessor :first,:second,:third

  def initialize(first,second,third)
    @first = first
    @second = second
    @third = third
  end

  def kind
    if @first > 0 and @second > 0 and @third > 0 and @first + @second > @third and @first + @third > @second and @second + @third > @first
      if @first == @second and @first == @third and @second == @third
        :equilateral
      elsif @first == @second or @first == @third or @second == @third
        :isosceles
      else
        :scalene
      end
    else
      begin
        raise TriangleError
      #rescue TriangleError => error
      end
    end
  end


  class TriangleError < StandardError
    def message
      "These parameters don't form a real triangle."
    end
  end

end
