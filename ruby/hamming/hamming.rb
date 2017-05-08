module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(strand1, strand2)
    unless strand1.size == strand2.size
      raise ArgumentError, "strand1.size != strand2.size (#{strand1.size} != #{strand2.size})"
    end
    (0..(strand1.size)).count do |index|
      strand1[index] != strand2[index]
    end
  end
end
