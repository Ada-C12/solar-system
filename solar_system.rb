require_relative 'planet'
require 'pry'

class SolarSystem
  
  # make star_name and planets readable (but not writable)
  attr_reader :star_name, :planets
  
  # add a constructor with parameter star_name
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
  
  def add_planet(planet)
    @planets << planet.name
  end
  
  def list_planets
    # planets_list = []
    # planets.map.each_with_index do |planet, index|
    #   planets_list << index + 1
    #   planets_list << planet
    planet_strings = ""
    @planets.each_with_index do |planet, index|
      planet_strings = planet_strings + "#{index + 1}" + ". " + planet + "\n"
    end
    return "Planets orbiting #{star_name}: " + "\n" + "#{planet_strings}"
  end
end

