require_relative 'planet'
require 'pry'

class SolarSystem
  
  attr_reader :star_name, :planets
  attr_writer :planet
  
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
  
  def add_planet(planet)
    @planets << planet
  end
  
  
  
  def list_planets
    list_planet = []
    @planets.each_with_index do |planet, index|
      list_planet << "\n#{index+ 1}.  #{planet.name}" 
    end
    return "Planets orbiting #{@star_name} \n#{list_planet.join}"
  end
  
  def find_planet_by_name(input)
    puts "Enter a planet you would like to search:"
    input = gets.chomp.upcase 
    @planets.each do |planet|
      if planet.name.upcase == input
        return planet
      end
    end
  end
end
