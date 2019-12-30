class Expect
  def initialize(value)
    @value = value
  end

  def to(comparison)
    if comparison.compare(@value)
      puts "Test passed"
    else
      puts "Test failed"
    end
  end
end

class Equal
  def initialize(value)
    @value = value
  end

  def compare(other)
    other == @value
  end
end

class Include
  def initialize(value)
    @value = value
  end

  def compare(array)
    array.include?(@value)
  end
end

class RespondTo
  def initialize(method_name)
    @method_name = method_name
  end

  def compare(other)
    other.respond_to? @method_name
  end
end