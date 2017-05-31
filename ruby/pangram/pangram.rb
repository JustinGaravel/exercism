module BookKeeping
  VERSION = 4
end

class Pangram
  def self.pangram?(phrase)
    return false if phrase.empty?
    phrase.downcase!
    
    @array = []
    ("a".."z").map do |letter|
      if phrase.include?(letter)
        @array.push(letter)
      end
    end
    return true if @array.length == 26

  end

end
