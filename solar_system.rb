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
    list = "Planets orbiting #{@star_name}"
    @planets.each_with_index { |planet, index|
      list += "\n#{index + 1}. #{planet.name}"
    }
    return list
  end
  
  def find_planet_by_name(string)
    related_planets = @planets.find_all { |planet|
      planet.name.downcase == string.downcase
    }
    return related_planets
  end
  
  def distance_between(name_A, name_B)
    planet_A = @planets.find_all {|planet| planet.name.downcase==name_A.downcase}
    planet_B = @planets.find_all {|planet| planet.name.downcase==name_B.downcase}
    
    return planet_A[0].distance_from_sun_km - planet_B[0].distance_from_sun_km
  end
end