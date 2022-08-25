class Triangle
  # write code here
  attr_accessor :a_side, :b_side ,:c_side


  

  def initialize(a_side,b_side,c_side)
    @a_side = a_side
    @b_side = b_side
    @c_side = c_side
   
  
  end

  def kind 

    if self.a_side <= 0 || self.b_side <= 0 || self.c_side <= 0
      raise TriangleError
    elsif self.a_side + self.b_side <= self.c_side || self.c_side + self.b_side <= self.a_side || self.a_side + self.c_side <= self.b_side
      raise TriangleError
    elsif self.a_side == self.b_side && self.b_side == self.c_side 
      :equilateral
    elsif self.a_side == self.b_side || self.c_side == self.a_side || self.b_side == self.c_side
      :isosceles
      elsif self.a_side != self.b_side && self.b_side != self.c_side
        :scalene
        else
          raise TriangleError
      end


  end

  class TriangleError < StandardError
    def message
      "Invalid triangle"
    end
    
  end

end
