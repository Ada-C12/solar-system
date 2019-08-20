require_relative "planet"

class SolarSystem
  attr_reader :star_name, :planets, :planet
  attr_reader :planets_list, :planets_list_formatted, :planet_to_find

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
    "Planets orbiting #{star_name}"
    @planets.each do |planet|
      @planets_list.push("#{i}. #{planet.name}")

      i += 1
    end
    return planets_list
  end

  def find_planet_by_name(planet_to_find)
    planets.each do |planet|
      if planet.name.downcase == planet_to_find.downcase
        return planet
      end

      return nil
    end
  end
end
