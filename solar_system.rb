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
    output = "Planets orbiting #{@star_name}\n"
    @planets.length.times do |index|
      output << "#{index+1}. #{@planets[index].name}\n"
    end
    return output 
  end
  
  def find_planet_by_name(target)
    @planets.each do |planet|
      if planet.name == target.capitalize
        return planet 
      end
    end
    
  end
end
