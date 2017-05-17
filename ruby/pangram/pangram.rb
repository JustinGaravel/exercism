module BookKeeping
  VERSION = 4
end

class Pangram
  def self.pangram?(phrase)
    phrase.downcase!
    @array = []
    0.upto(phrase.length) do |i|
      if phrase[i] =~ /[a-z]/x
        @array.push(true)
      else
        @array.push(false)
      end
    end
    puts @array

    if @array.include?(false)
      false
    else
      true
    end
  end

end
