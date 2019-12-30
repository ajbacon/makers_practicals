class ScrambledDiary
  attr_reader :method
  def initialize(contents)
    @contents = contents
  end

  def scramble_by(method)
    @method = method
    @contents = @method.scramble(@contents)
  end

  def unscramble
    @contents = @method.unscramble(@contents)
  end

  def read
    @contents
  end
end

class AdvancingChars
  def initialize(steps)
    @steps = steps
  end

  def scramble(contents)
    plain_chars = contents.chars
    scrambled_chars = plain_chars.map do |char|
      (char.ord + @steps).chr
    end
    contents = scrambled_chars.join
  end

  def unscramble(contents)
    scrambled_chars = contents.chars
    plain_chars = scrambled_chars.map do |char|
      (char.ord - @steps).chr
    end
    contents = plain_chars.join
  end
end


class ReverseChars
  def scramble(contents)
    contents = contents.reverse
  end

  def unscramble(contents)
    contents = contents.reverse
  end
end






=begin
def scramble_by_advancing_chars(steps)
  plain_chars = @contents.chars
  scrambled_chars = plain_chars.map do |char|
    (char.ord + steps).chr
  end
  @contents = scrambled_chars.join
end

def unscramble_by_advancing_chars(steps)
  scrambled_chars = @contents.chars
  plain_chars = scrambled_chars.map do |char|
    (char.ord - steps).chr
  end
  @contents = plain_chars.join
end

def scramble_by_reversing
  @contents = @contents.reverse
end

def unscramble_by_reversing
  @contents = @contents.reverse
end
=end