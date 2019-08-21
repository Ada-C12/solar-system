require_relative 'planet'

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
    list = "\nPlanets orbiting #{@star_name}:"
    @planets.each_with_index do |planet, index|
      list += "\n#{index + 1}. #{planet.name}"
    end
    return list
    main
  end
  
  def find_planet_by_name(planet_name)
    found_planet = @planets.find(ifnone = nil) { |planet| (planet.name).downcase == planet_name.downcase }
    return found_planet
  end
  
  def distance_between_planets (planet1, planet2)
    first_planet = find_planet_by_name(planet1)
    second_planet = find_planet_by_name(planet2)
    if first_planet && second_planet 
      distance = first_planet.distance_from_the_sun -
      second_planet.distance_from_the_sun.abs #abs = absolute value to negate negatives
    else 
      distance = nil
    end
    return distance
  end
end