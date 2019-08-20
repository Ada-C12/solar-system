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
  
  # Create a method SolarSystem#find_planet_by_name, that takes the name of a planet as a string, and returns the corresponding instance of Planet. The lookup should be case-insensitive, so that Earth, earth and eArTh all return the same planet.
  def find_planet_by_name(inst_planet)
    inst_planet = inst_planet.capitalize
    return @planets.find {|planet| planet.name.capitalize==inst_planet.capitalize}
  end
  
  
end