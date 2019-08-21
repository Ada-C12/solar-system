# Author: Hallie Johnson
# Date: 8/20/19
# Assignment: Solar System


require_relative 'planet'
require_relative 'solar_system'
require 'colorize'

def main
  
  solar_system = SolarSystem.new('Sol')
  
  # Wave 1 - CREATE PLANETS
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  solar_system.add_planet(earth)
  
  mercury = Planet.new('Mercury', 'dark gray', 3.285e23, 5.7e7, 'Mercury has a molten core.')
  solar_system.add_planet(mercury)
  
  venus = Planet.new('Venus', 'red', 45, 98, 'Such a good planet.')
  solar_system.add_planet(venus)
  
  mars = Planet.new('Mars', 'red', 6.39e23, 2.27e8, 'Home to the tallest mountain in the solar system')
  solar_system.add_planet(mars)
  
  
  # Wave 3 - Control Loop for User Input
  
  input = ""
  puts "HALLIE'S SOLAR SYSTEM".colorize(:yellow)
  puts "Enter 'L' to list all planets"
  puts "Enter 'X' to exit"
  puts "Enter 'D' for planet details\n"
  puts "Enter 'A' to add a planet"
  while input != 'x'
    puts "\nWhat would you like to do?"
      print "Selection: "
      
      input = gets.chomp.downcase
      
      case input
      when 'l'
        puts solar_system.list_planets
      when 'x'
        abort "Thanks for playing!"
      when 'd'
        solar_system.planet_details
      when 'a'
        add_planet(solar_system)
      else
        puts "Oops! That can't be right. Try another selection.".colorize(:red)
      end  
      
    end
    
  end
  
  def add_planet(solar_system)
    print "Enter planet name: "
    planet_name = gets.chomp.downcase
    
    print "Enter planet color? "
    planet_color = gets.chomp.downcase
    
    print "Enter planet mass (kg): "
    planet_mass = gets.chomp
    
    print "Enter planet's distance from the sun (km): "
    planet_distance = gets.chomp
    
    print "Enter a fun fact: "
    planet_fact = gets.chomp
    
    new_planet = Planet.new(planet_name, planet_color, planet_mass, planet_distance, planet_fact)
    solar_system.add_planet(new_planet)
  end
  
  main
  