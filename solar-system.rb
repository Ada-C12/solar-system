require_relative 'planet'

class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(new_planet)
    @planets << new_planet
  end

  def list_planets
    count = 1
    planets_string = "Planets orbiting #{star_name}\n"
    @planets.map do |planet|
      planet_list = "#{count}. #{planet.name}\n"
      planets_string += planet_list
      count += 1
    end
    return planets_string
  end

  # def find_planet_by_name(planet)

  # end

end

