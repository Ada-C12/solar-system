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
  
  def find_planet_by_name(planet_name)
    @planets.each do |planet|
      if planet_name.downcase == planet.name.downcase
        return planet
      end
    end
    
    return "Sorry, there was no planet found by the name you entered."
    
  end
  
  def distance_between(planet_name_1, planet_name_2)
    planet_1 = find_planet_by_name(planet_name_1)
    planet_2 = find_planet_by_name(planet_name_2)
    
    result = (planet_1.distance_from_sun_km - planet_2.distance_from_sun_km).abs rescue nil
    
    if result == nil
      return "Sorry, one of the planet names you entered was invalid. Please try again."
    else
      return result
    end
    
  end
  
end