require_relative '../lib/triangle'

class Triangle
  attr_accessor :length_a, :length_b, :length_c
  
  def initialize(length_a, length_b, length_c)
    @length_a = length_a
    @length_b = length_b
    @length_c = length_c
  end
  
  def kind 
    if length_a != length_b || length_c
      scalene
    elsif
      length_a == length_b && length_b != length_c
      isosceles
    else
      equilateral
    end
  end   
  
  
end
