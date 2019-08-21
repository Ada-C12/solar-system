class SolarSystem
  
  attr_reader :star_name, :planets
  
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
  
  def add_planet(planet)
    @planets.push(planet)
  end
  
  def list_of_planets()
    string = "Planets orbiting #{star_name}\n"
    
    @planets.each_with_index do |planet, number|
      string2 = "#{number + 1}. #{planet.name} \n"
      string.concat(string2)
    end
    
    return string
    
  end
  
  def find_planet_by_name(planet_name)
    
    found = "not found"
    until found == planet_name
      @planets.each do |planet|
        found = planet.name
      end  
    end
    
    return found
    
  end
  
  
end