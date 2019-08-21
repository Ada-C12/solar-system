require_relative "planet"

# SolarSystem class is responsible for keeping track of a collection of instances of Planet
class SolarSystem
  attr_reader :star_name, :planets  

# take one parameter, star_name, and saves it in an instance variable
# create @planets array, which will store all the planets
  def initialize(star_name)
    if star_name.class != String
      raise TypeError.new "Star name should be a string"
    elsif star_name == nil
      raise TypeError.new "Star name should not be nil"
    end

    @star_name = star_name
    @planets = []
  end

# add_planet takes an instance of Planet as a parameter and adds it to the list of planets
  def add_planet(planet)
    if planet.class != Planet
      raise TypeError.new "Inputed planet should be instance of class planet"
    elsif planet == nil
      raise TypeError.new "Inputed planet should not be nil"
    end

    @planets << planet
  end
  
# list_planets returns (not puts) a string containing a list of all the planets in the system
  def list_planets
    planetname_display = []
    @planets.each_with_index do |planet,index| 
      planetname_display << "#{index + 1}. #{planet.name.capitalize}"
    end
    return "Planets orbiting #{star_name}\n#{planetname_display.join("\n")}"
  end

# takes the name of a planet as a string, and returns the corresponding instance of Planet
# lookup should be case-insensitive, so that Earth, earth and eArTh all return the same planet
  def find_planet_by_name(planet)
    if planet.class != String
      raise TypeError.new "Planet should be string"
    elsif planet == nil
      raise TypeError.new "Planet should not be nil"
    end
   
    @planets.each do |planet_instance|
      if planet.upcase == planet_instance.name.upcase
        return planet_instance 
      end
    end
  end
  
  # distance_between takes two planet names as parameters and returns the distance between them
  def distance_between(planet_1, planet_2)
      raise TypeError.new "Inputed Planet 1 should be string" if planet_1.class != String
      raise TypeError.new "Inputed Planet 1 should not be nil" if planet_1 == nil
      raise TypeError.new "Inputed Planet 2 should be string" if planet_2.class != String
      raise TypeError.new "Inputed Planet 2 should not be nil" if planet_2 == nil
    
    planet1 = find_planet_by_name(planet_1)
    planet2 = find_planet_by_name(planet_2)

    planet_1_distance_sun = planet1.distance_from_sun_km
    planet_2_distance_sun = planet2.distance_from_sun_km

    distance_between = (planet_1_distance_sun - planet_2_distance_sun).abs
    return distance_between
  end



end  
