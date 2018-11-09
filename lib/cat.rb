class Cat
  attr_accessor  :mood
  @@cat = []
  
  def name 
    @name  
  end 
  
 # def name=(name)
  #  @name = name
  #end
  
  def initialize(name)
    @name = name
    @@cat << (name)
    @mood = "nervous"
  end 
  
  
  
end