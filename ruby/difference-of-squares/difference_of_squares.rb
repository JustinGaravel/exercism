module BookKeeping
  VERSION = 3
end

class Squares
  def initialize(val)
    @val = val
  end
  def square_of_sum
    @sum = 0
    1.upto(@val) do |i|
      @sum += (i)
    end
    @sum**2
  end
  def sum_of_squares
    @sum = 0
    1.upto(@val) do |i|
      @sum += ((i)**2)
    end
    @sum
  end
  def difference
    return 0 if @val == 0
    square_of_sum - sum_of_squares
  end
end
