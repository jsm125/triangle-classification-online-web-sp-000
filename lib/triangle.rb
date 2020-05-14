require_relative '../lib/triangle'

class Triangle
  attr_accessor :length_a, :length_b, :length_c
  
  def initialize(length_a, length_b, length_c)
    @length_a = length_a
    @length_b = length_b
    @length_c = length_c
  end
  
  class TriangleError < StandardError
  
    def kind(length_a,length_b,length_c)
      if (length_a != length_b) && (length_a != length_c) && (length_b != length_c)
        :scalene
      elsif
        length_a == length_b && length_a == length_c
        :equilateral
      else
        :isosceles
      end
    end   
  end
  
end
