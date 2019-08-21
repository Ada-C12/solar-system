require_relative 'planet'

class SolarSystem
  attr_reader :star_name, :planets
  
  def initialize (star_name)
    @star_name = star_name 
    @planets = []
  end
  
  def add_planet(planet_name)
    @planets << planet_name 
  end 
  
  def distance_between(planet_1, planet_2)
    return (planet_1.distance_from_sun_km - planet_2.distance_from_sun_km).abs
  end 
  
  def find_planet_by_name(input)
    planets.each do |planet|
      if planet.name == input.capitalize 
        return planet
      end 
    end  
    return "We could not find your planet :/"
  end 
  
  def list_planets 
    output_list = "Planets orbiting #{star_name} include:\n" 
    i = 1 
    planets.each do |planet|
      output_list << "#{i}. #{planet.name}\n"
      i += 1
    end 
    return output_list
  end 
  
end
