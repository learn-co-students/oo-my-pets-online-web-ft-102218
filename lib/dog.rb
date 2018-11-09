class Dog
  attr_accessor  :mood
  @@dog = []
  
  def name 
    @name  
  end 
  
 # def name=(name)
  #  @name = name
  #end
  
  def initialize(name)
    @name = name
    @@dog << (name)
    @mood = "nervous"
  end 
  
  
  
end