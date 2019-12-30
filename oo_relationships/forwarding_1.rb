# class SecretDiary
#   def initialize
#     @contents = "Eric Cantona is the best footballer"
#     @unlocked = false
#   end

#   def unlock
#     @unlocked = true
#   end

#   def lock
#     @unlocked = false
#   end

#   def read
#     return "Go away!" unless @unlocked
#     @contents
#   end
# end

class SecretDiary
  def initialize
    @diary = Diary.new
    @unlocked = false
  end

  def unlock
    @unlocked = true
  end

  def lock
    @unlocked = false
  end

  def read
    return "Go away!" unless @unlocked
    @diary.read
  end
end


class Diary
  def initialize
    @contents = "Eric cantona is the greatest footballer"
  end

  def read
    @contents
  end
end