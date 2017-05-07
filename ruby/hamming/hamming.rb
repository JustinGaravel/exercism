module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(strand1, strand2)
    unless strand1.size == strand2.size
      raise ArgumentError, 'First strand is longer than second' if strand1.size > strand2.size
      raise ArgumentError, 'Second strand is longer than first' if strand1.size < strand2.size
    end

    hamming_distance = 0
    strand1.size.times do |index|
      hamming_distance += 1 unless strand1[index] == strand2[index]
    end
    hamming_distance
  end
end
