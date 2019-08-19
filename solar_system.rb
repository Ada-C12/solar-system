# Build a second class, SolarSystem, which is responsible for keeping track of a collection of instances of Planet
class SolarSystem
  attr_reader :star_name, :planets, :inst_planet
  # Constructor should take one parameter, star_name, and save it in an instance variable
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
  
  
  # Create a method SolarSystem#add_planet, which will take an instance of Planet as a parameter and add it to the list of planets.
  def add_planet(inst_planet)
    @planets << inst_planet
  end
  
  # Create a method SolarSystem#list_planets, which will return (not puts) a string containing a list of all the planets in the system.
  def list_planets
    return "Planets orbiting #{@star_name}\n" + 
    @planets.map.with_index {|planet,index| "#{index + 1}. #{planet.name}"}.join("\n")
  end
  
  
end