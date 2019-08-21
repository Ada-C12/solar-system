require_relative "planet"

class SolarSystem
  attr_reader :planets_list, :planets_list_formatted, :star_name, :planets, :planet, :first_planet, :second_planet
  attr_accessor :planet_to_find, :first_planet, :second_planet

  def initialize(star_name)
    @star_name = star_name
    @planets_list = []
    @planets = []
  end

  def add_planet(planet)
    @planets.push(planet)
  end

  def list_planets
    i = 1
    planets_list = []
    "Planets orbiting #{star_name}"
    @planets.each do |planet|
      planets_list.push("#{i}. #{planet.name}")
      i += 1
    end
    return planets_list
  end

  def find_planet_by_name(planet_to_find)
    @planets.each do |planet|
      if planet.name.downcase == planet_to_find.downcase
        return planet
      end
    end
    return nil_planet = Planet.new(name: "", color: "", mass_kg: 1, distance_from_sun_km: 1, fun_fact: "")
  end

  def distance_between(first_planet_select, second_planet_select)
    distance = (first_planet_select.distance_from_sun_km - second_planet_select.distance_from_sun_km).abs
    return distance
  end
end
