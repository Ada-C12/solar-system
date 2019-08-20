class SolarSystem
  attr_reader :star_name, :planets
  
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
  
  def add_planet(planet)  
    if planet.class == Planet
      @planets.push(planet) 
    else 
      raise ArgumentError.new("#{planet} is not a planet.")
    end
  end
  
  def list_planets
    planet_list = "Planets orbiting #{star_name}"
    
    @planets.each_with_index do |planet, index|
      planet_list << "\n#{index + 1}. #{planet.name}"
    end
    
    return planet_list
  end  
  
  def find_planet_by_name(planet_name)
    planet = @planets.select do |planet|
      planet.name.capitalize == planet_name.capitalize
    end
    
    return planet
  end
  
  def distance_between(first_planet, second_planet)
    first_position = first_planet.distance_from_sun_km
    second_position = second_planet.distance_from_sun_km
    
    if first_position > second_position
      return first_position - second_position
    else
      return second_position - first_position
    end
  end
  
end
