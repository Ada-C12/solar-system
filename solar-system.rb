require_relative 'planet'
require 'awesome_print'


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

  def find_planet_by_name(planet_to_find)
    found_planet = @planets.find(ifnone = nil) {|planet| planet.name.capitalize == planet_to_find.capitalize}
    return found_planet
  end

end


  # def distance_between(planet_one, planet_two)
  #   @planets.map do
  #     if planet_one && planet_two
  #       distance = (planet_one.distance_from_sun_km - planet_two.distance_from_sun_km).abs
  #     else
  #       puts "this didn't work"
  #     end
  #   return distance
  #   end
  # end
