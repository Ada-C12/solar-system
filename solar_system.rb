require_relative 'planet'

class SolarSystem
  
  attr_reader :star_name, :planets
  
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
  
  def add_planet(planet_instance)
    @planets << planet_instance
  end
  
  def list_planets
    listed_planets = "Planets orbiting #{star_name}\n" + @planets.map.with_index { |planet, index| "#{index + 1}.  #{planet.name}" }.join("\n")
    return listed_planets
  end
  
  def find_planet_by_name(planet_name)
    planet_name.capitalize!
    
    search = @planets.find { |planet| planet.name == planet_name }
    return search
  end
  
  def distance_between(planet_one, planet_two)
    planet_one.capitalize!
    planet_two.capitalize!
    
    first = find_planet_by_name(planet_one)
    second = find_planet_by_name(planet_two)
    
    distance = first.distance_from_sun_km - second.distance_from_sun_km
    # return the absolute value of calculation
    return "The distance between #{planet_one} and #{planet_two} is #{distance.abs}km."
  end
end
