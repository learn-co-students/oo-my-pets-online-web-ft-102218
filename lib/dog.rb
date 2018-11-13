class Dog
  attr_reader :name
  attr_accessor :mood

  @name = []

  def initialize(name)
    @name = name
    self.mood = "nervous"
  end

  # def mood
  # end
end

# can initialize a dog (FAILED - 6)
# initializes with a name (FAILED - 7)
# can't change its name (FAILED - 8)
# initializes with a nervous mood (FAILED - 9)
# can change its mood (FAILED - 10)
