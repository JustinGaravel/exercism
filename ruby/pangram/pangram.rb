module BookKeeping
  VERSION = 4
end

class Pangram
  def self.pangram?(phrase)
    return false if phrase.empty?
    phrase.downcase!

    @alphabet_in_phrase = []
    ("a".."z").map do |letter|
      @alphabet_in_phrase.push(letter) if phrase.include?(letter)
    end
    return true if @alphabet_in_phrase.length == 26
  end
end
