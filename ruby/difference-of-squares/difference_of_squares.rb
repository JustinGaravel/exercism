module BookKeeping
  VERSION = 3
end

class Squares

  def initialize(val)
    @val = val
    #puts "@val is set to #{@val}"
  end

  def square_of_sum
    sum = 0
    @val.times do |i|
      #puts "Adding #{i} to #{sum}"
      sum += (i+1)
    end
    sum**2
  end

  def sum_of_squares
    sum = 0
    @val.times do |i|
      #puts "Adding #{i} to #{sum}"
      sum += ((i+1)**2)
    end
    sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
  
end
