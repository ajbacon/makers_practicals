class Expect
  def initialize(value)
    @value = value
  end

  def to(comparison)
    if comparison.compare(@value)
      p "Test Passed"
    else
      p "Test Failed"
  end
end

class Equal
  def initialize(value)
    @value = value
  end

  def compare(comp)
    @value == comp
  end
end















=begin
def to_equal(other)
  if @value == other
    puts "Test passed"
  else
    puts "Test failed"
  end
end

def to_include(other)
  if @value.include? other
    puts "Test passed"
  else
    puts "Test failed"
  end
end

def to_respond_to(method_name)
  if @value.respond_to? method_name
    puts "Test passed"
  else
    puts "Test failed"
  end
end
=end
