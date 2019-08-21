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
    string = "Planets orbiting #{star_name}\n"
    
    @planets.each_with_index do |item, k|
      string << "#{k + 1}. #{item.name}\n"
    end
    
    return string
  end
  
  def find_planet_by_name(planet)
    found_planet = @planets.select { |item| item.name == planet.capitalize }
    
    # .length determines the number of results the look-up produced
    # both multiple planets with the same name and no planets found result in error
    if found_planet.length == 1
      return found_planet[0]
    elsif found_planet.length > 1
      raise ArgumentError, "Multiple matches found for the planet."
    else
      raise ArgumentError, "No match found for planet."
    end
  end
  
  # two planet names as parameters and returns the distance between them
  def distance_between(planet_1, planet_2)
    planet_1 = find_planet_by_name(planet_1)
    planet_2 = find_planet_by_name(planet_2)
    
    return (planet_1.distance_from_sun_km - planet_2.distance_from_sun_km).abs
  end
end
