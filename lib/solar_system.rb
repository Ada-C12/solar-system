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
    array_of_strings = ["\nPlanets orbiting #{@star_name}"]
    
    @planets.each_with_index do |planet, index|
      array_of_strings << "\n#{index + 1}. #{planet.name}"
    end
    
    return array_of_strings.join
  end
  
end