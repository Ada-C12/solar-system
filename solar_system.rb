# Solar-System : Classes Program
# Author: Farah Davoodi
# Email: farahdavoodi@gmail.com
# Date: August 19 2019

require_relative 'planet'
require 'pry'

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
    planet_names = []
    
    @planets.each_with_index do |planet,index|
      planet_names << "#{index+1}. #{planet.name}"
    end
    
    return "Planets orbiting the #{star_name}:\n#{planet_names.join("\n")}"
  end
  
  def find_planet_by_name(planet_name)
    @planets.each do |planet|
      if planet_name.capitalize == planet.name
        return planet
      end
    end
  end
  
  def planet_details
    puts "What planet would you like to learn about?"
    input = gets.chomp.capitalize
    @planets.each do |planet|
      if planet.name.include? (input)
        return planet.summary
      else
        return "That planet does not exist"
      end
    end
  end
  
end

