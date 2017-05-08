module BookKeeping
  VERSION = 4
end

class Complement
  def self.of_dna(strand)
    raise ArgumentError, "Strand is empty" if strand == ""
    strand2 = ""
    (strand.size).times do |nucleotide|
      case strand[nucleotide]
      when "G"
        strand2 << "C"
      when "C"
        strand2 << "G"
      when "T"
        strand2 << "A"
      when "A"
        strand2 << "U"
      else
        strand2 = ""
        break
      end
    end
    strand2
  end
end
