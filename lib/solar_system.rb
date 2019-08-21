class SolarSystem
  attr_reader :star_name, :planets
  
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
  
  def add_planet(planet)
    @planets.push(planet)
  end
  
  def list_planets
    list = "\nPlanets orbiting #{@star_name}"
    @planets.each_with_index do |planet, index| 
      list += "\n#{index + 1}. #{planet.name}" 
    end
    return list
  end
  
  def find_planet_by_name(string)
    return @planets.find { |planet| planet.name.downcase == string.downcase }
  end
  
  def distance_between(name_A, name_B)
    planet_A = find_planet_by_name(name_A)
    planet_B = find_planet_by_name(name_B)
    
    return (planet_A.distance_from_sun_km - planet_B.distance_from_sun_km).abs
  end
end