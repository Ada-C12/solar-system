# Build a second class, SolarSystem, which is responsible for keeping track of a collection of instances of Planet
class SolarSystem
  attr_reader :star_name, :planets
  # Constructor should take one parameter, star_name, and save it in an instance variable
  def initialize(star_name)
    @star_name = star_name
    @planets = []
    
    
  end