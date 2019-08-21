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
  
  # def find_planet_by_name(planet)
  #   puts "Enter a planet you would like to search:"
  #   planet = gets.chomp.upcase
  
  #   if 
  #     @planets.include?(planet)
  #     puts planet
  #   else
  #     puts "Sorry bud"
  #   end 
  # end
  
end

