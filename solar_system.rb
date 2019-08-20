#solarsystem.rb

class SolarSystem
  attr_reader :star_name, :planets
  
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
  
  def add_planet(planet)
    @planets << planet
  end
  
  def list_planets
    string = ""
    
    @planets.each_with_index { |planet, i| string = string + "#{i+1}. #{planet.name}\n" }
    
    return "Planets orbiting #{@star_name}:" + " \n#{string}"
  end
  
  def find_planet_by_name(name)
    @planets.each do |planet|
      if planet.name.downcase == name.downcase
        return planet
      end
    end
    
    raise ArgumentError.new("Planet not found.") 
    
  end
  
  def distance_between(planet1, planet2)
    distance1 = find_planet_by_name(planet1).distance_from_sun_km
    distance2 = find_planet_by_name(planet2).distance_from_sun_km
    
    distance_between = (distance1-distance2).abs
    
    return distance_between
  end
  
  
  
end
