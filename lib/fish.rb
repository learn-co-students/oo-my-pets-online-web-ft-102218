class Fish
  attr_reader :name
  attr_accessor :mood

  @name = []

  def initialize(name)
    @name = name
    self.mood = "nervous"
  end
end

# can initialize a fish (FAILED - 11)
# initializes with a name (FAILED - 12)
# can't change its name (FAILED - 13)
# initializes with a nervous mood (FAILED - 14)
# can change its mood (FAILED - 15)
