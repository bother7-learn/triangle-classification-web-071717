require 'pry'


class Triangle
  # write code here
  attr_reader :first, :second, :third

  def initialize(first, second, third)
    @first = first
    @second = second
    @third = third

  end


  def kind

    if first <= 0 || second <= 0 || third <= 0
      # begin
        raise TriangleError
      # rescue TriangleError => error
          # puts error.message
      # end
    elsif (first + second) <= third || (second + third) <= first || (first + third) <= second
      raise TriangleError
    elsif first == second && second == third
        :equilateral
    elsif first == second && first != third
      :isosceles
    elsif second == third && first != third
      :isosceles
    elsif first == third && second != third
      :isosceles
    elsif first != second && second != third && first != third
      :scalene

    end
  end



end



class TriangleError < StandardError
  def message
    "Triangle is illegal"
  end
end
