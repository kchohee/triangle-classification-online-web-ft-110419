class Triangle
  # attr_accessor :side1, :side2, :side3
  def initialize(side1, side2, side3)
      @sides = []
      @side1 = side1
      @side2 = side2
      @side3 = side3
      @sides << side1
      @sides << side2
      @sides << side3
    end

    def kind
      if @sides.any? {|e| e == 0 } ||
          @sides.any? {|e| e < 0 } ||
          @side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side1 + @side3 <= @side2
        begin
          raise TriangleError
          puts error.message
        end
      elsif @side1 == @side2 && @side2 == @side3
        :equilateral
      elsif
        @side1 != @side2 && @side2 != @side3 && @side1 != @side3
        :scalene
      else
        :isosceles
      end
    end
 class TriangleError < StandardError
   def error_bud
     Return " Your triangles seems to be a little off.... Sorry bud! Might wanna check your input. :)"
   end
 end
 end
