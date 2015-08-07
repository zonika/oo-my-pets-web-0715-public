require_relative 'cat'
require_relative 'dog'
require_relative 'fish'
require 'pry'

class Owner
  # code goes here
  @@all=[]
  attr_reader :species
  attr_accessor :name, :pets
  def initialize(species)
    @species=species
    @pets = {fishes:[], dogs:[], cats:[]}
    @@all<<self
  end
  def say_species
    "I am a #{species}."
  end
  def buy_cat(name)
    @pets[:cats]<<Cat.new(name)
  end
  def buy_fish(name)
    @pets[:fishes]<<Fish.new(name)
  end
  def buy_dog(name)
    @pets[:dogs]<<Dog.new(name)
  end
  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood="happy"
    end
  end
  def walk_dogs
    @pets[:dogs].each do |fish|
      fish.mood="happy"
    end
  end
  def play_with_cats
    @pets[:cats].each do |fish|
      fish.mood="happy"
    end
  end
  def sell_pets
    @pets.each do |type, pet|
      pet.each do | p |
        p.mood="nervous"
      end
      @pets[type]=[]
    end
  end
  def self.all
    @@all
  end
  def self.reset_all
    @@all=[]
  end
  def self.count
    @@all.length
  end
  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
end
