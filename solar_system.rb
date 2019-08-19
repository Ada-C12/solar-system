class SolarSystem
  
  attr_reader :star_name, :planets
  
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
  
  def add_planet(planet)
    @planets.push(planet.name)
    
  end
  
  def list_planets
    intro =  "Planets Orbiting #{@star_name}: \n"
    count = 1
    @planets.each do |x|
      intro += "#{count}. #{x}\n"
    end
    
    return intro
  end
  
  
end
