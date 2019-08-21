# In this wave you will build a second class, SolarSystem.
# which is responsible for keeping track of a collection of instances of Planet.

class SolarSystem
  attr_reader :star_name, :planets
  
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
  
  def add_planet(planet)
    return @planets << planet
  end
  
  def list_planets
    final_list = "\nPlanets orbiting #{star_name}:\n"
    
    @planets.each_with_index do |planet, i|
      final_list = final_list + "#{i+1} - #{planet.name}\n"
    end 
    return final_list
  end
  
  def find_planet_by_name(name)
    found_planet = nil
    
    @planets.each do |planet|
      if planet.name == name
        found_planet = planet
      end 
      
    end 
    return found_planet
  end 
  
end 
