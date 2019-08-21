require_relative "planet"

# Create class Solarsystem and initialize with parameter 'star_name'
class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  # method to add instances of planets to the solar system
  def add_planet(planet)
    @planets.push(planet)
  end

  # Method to format the list of planets into a neat string.
  def list_planets
    i = 1
    planets_list = "Planets orbiting #{star_name}\n"
    @planets.each do |planet|
      planets_list << "#{i}. #{planet.name}\n"
      i += 1
    end
    return planets_list
  end

  # method to check that a planet entered is, infact, a planet of the solar system.
  # returns a default empty planet if not
  def find_planet_by_name(planet_to_find)
    @planets.each do |planet|
      if planet.name.downcase == planet_to_find.downcase
        return planet
      end
    end
    return nil_planet = Planet.new(name: "", color: "", mass_kg: 1, distance_from_sun_km: 1, fun_fact: "")
  end

  # method to calculate the distance between two selected planets.
  def distance_between(first_planet_select, second_planet_select)
    distance = (first_planet_select.distance_from_sun_km - second_planet_select.distance_from_sun_km).abs
    return distance
  end
end
