class Owner
  OWNERS = []
   attr_accessor :name, :pets
   attr_reader :species

   def self.reset_all
     OWNERS.clear
   end

   def self.all
     OWNERS
   end

   def self.count
     OWNERS.size
   end

   def initialize(species)
     @species = species
     OWNERS << self
     @pets = {:fishes => [], :dogs => [], :cats => []}
   end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
  end

  def say_species
    "I am a #{species}."
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end


end

# Class methods
#   keeps track of the owners that have been created (FAILED - 16) - shovels owners into an array
#   can count how many owners have been created (FAILED - 17)
#   can reset the owners that have been created (FAILED - 18)
#   can initialize an owner (FAILED - 19)
# instance methods
#   #species - create this method
#     initializes with a species (FAILED - 20)
#     can't change its species (FAILED - 21)
#   #say_species create this method
#     can say its species (FAILED - 22)
#   #name create this method
#     can have a name (FAILED - 23)
#   #pets create this method
#     is initialized with a pets attribute as a hash with 3 keys (FAILED - 24)
#   #buy_fish create this method
#     can buy a fish that is an instance of the Fish class (FAILED - 25)
#     knows about its fishes (FAILED - 26)
#   #buy_cat create this method
#     can buy a cat that is an instance of the Cat class (FAILED - 27)
#     knows about its cats (FAILED - 28)
#   #buy_dog create this method
#     can buy a dog that is an instance of the Dog class (FAILED - 29)
#     knows about its dogs (FAILED - 30)
#   #walk_dogs create this method
#     walks the dogs which makes the dogs' moods happy (FAILED - 31)
#   #play_with_cats create this method
#     plays with the cats which makes the cats moods happy (FAILED - 32)
#   #feed_fish create this method
#     feeds the fishes which makes the fishes' moods happy (FAILED - 33)
#   #sell_pets create this method
#     can sell all its pets, which make them nervous (FAILED - 34)
#   #list_pets create this method
#     can list off its pets (FAILED - 35)
