class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []
  @@owner_count = 0

  def self.all
    @@all
  end

  def self.count
    @@owner_count
  end

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    self.class.all << self
    @@owner_count += 1
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def self.reset_all
    @@all.clear
    @@owner_count = 0
  end

  def walk_dogs
    @pets[:dogs].each do
      |dog| dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do
      |cat| cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do
      |fish| fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |pet, species|
      species.each do |pet|
        pet.mood = "nervous"
      end
      species.clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end

end
