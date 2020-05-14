require_relative '../lib/triangle'

class Triangle
  attr_accessor :length_a, :length_b, :length_c
  
  def initialize(length_a, length_b, length_c)
    @length_a = length_a
    @length_b = length_b
    @length_c = length_c
  end
  
  class TriangleError < StandardError
  
    def kind
      if (@length_a <= 0) || (@length_b <= 0) || (@length_c <= 0)
        raise TriangleError
      elsif 
        (@length_a + @length_b <= @length_c) || (@length_a + @length_c <= @length_b) || (@length_b + @length_c <= @length_a)
        raise TriangleError
      else
         if (@length_a == @length_b) || (@length_b == @length_c) || (@length_a == @length_c)
          :isosceles
      elsif
          (@length_a == @length_b) && (@length_b == @length_c)
          :equilateral
      elsif
          (@length_a != @length_b) && (@length_b == @length_c) && (@length_a != @length_c)
          :scalene
      end
      end   
    end
  
  end
end