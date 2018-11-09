class Fish
  attr_accessor  :mood
  @@fish = []
  
  def name 
    @name  
  end 
  
 # def name=(name)
  #  @name = name
  #end
  
  def initialize(name)
    @name = name
    @@fish << (name)
    @mood = "nervous"
  end 
  
  
  
end