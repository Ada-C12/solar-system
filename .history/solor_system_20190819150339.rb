class SolarSystem
  
  attr_reader :star_name, :planets
  
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
  
  def add_planet(name)
    @planets.push(name)
  end
  
  def list_of_planets
    string = "Planets orbiting #{star_name}\n"
    
    @planets.each do |planet, number|
      string2 = "#{number+1}. #{planet} \n"
      string.append(string2)
    end
    
    return # string
    
  end
  
end