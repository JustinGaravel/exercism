module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(strand1, strand2)
    @hamming_distance = 0
    raise ArgumentError, 'Second strand is longer than first' if strand1.size < strand2.size
    raise ArgumentError, 'First strand is longer than second' if strand1.size > strand2.size
    if strand1.size == strand2.size
      #compare them
      1..strand1.size.times do |index|
        unless strand1[index] == strand2[index]
          @hamming_distance += 1
        end
      end
    end
    @hamming_distance
  end
end
