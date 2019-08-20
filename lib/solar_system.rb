require 'pry'

class SolarSystem
  
  attr_reader :star_name, :planets
  
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
  
  def add_planet(planet)
    planets << planet
  end
  
  def list_planets
    planets_string = "Planets orbiting #{@star_name}:"
    count = 0
    @planets.map do |planet|
      count += 1
      planets_string = planets_string + "\n#{count}. #{planet.name}"
    end
    return planets_string
  end
  
  def find_planet_by_name(planet_to_find)
    found_planet_summary_string = ""
    found_planet_summary = @planets.map do |planet|
      if planet.name.upcase == planet_to_find.upcase
        planet.summary
      end
    end
    if found_planet_summary.length > 1
      found_planet_summary.each do |planet|
        found_planet_summary_string = found_planet_summary_string + planet 
      end
    elsif found_planet_summary.length == 1 && found_planet_summary[0] != nil
      found_planet_summary_string = found_planet_summary[0]
    end
    if found_planet_summary_string != ""
      return found_planet_summary_string
    else
      return "That planet is not in this solar system."
    end
  end
  
  def distance_between(planet_a, planet_b)
    return (planet_a.distance_from_sun_km - planet_b.distance_from_sun_km).abs
  end
  
end
