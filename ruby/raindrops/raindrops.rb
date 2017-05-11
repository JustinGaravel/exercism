module BookKeeping
  VERSION = 3
end


class Raindrops
  def self.convert(number)
    unless number.is_a? Integer
      raise ArgumentError
    end

    factors = find_factors(number)

    if factors.include?(3) || factors.include?(5) || factors.include?(7)
      output = ""
      factors.each do |factor|
        case factor
        when 3
          output << "Pling"
        when 5
          output << "Plang"
        when 7
          output << "Plong"
        end
      end
    else
      output = number.to_s
    end
    output.force_encoding(Encoding::UTF_8)
  end

  def self.find_factors(number)
    (1..number).select { |n| number % n == 0 }
  end
end
