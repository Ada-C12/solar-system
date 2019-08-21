# Solar-System : Classes Program
# Author: Farah Davoodi
# Email: farahdavoodi@gmail.com
# Date: August 19 2019

require_relative 'planet'
require_relative 'solar_system'
require 'pry'

def main
  
  # Wave 1
  solar_system = SolarSystem.new('Sol')
  
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life...or so we think...')
  solar_system.add_planet(earth)
  
  saturn = Planet.new('Saturn', 'red-orange', 5.683e26, 1.434e9, 'A planet with many rings')
  solar_system.add_planet(saturn)
  
  # Wave 3
  answer = "y"
  while answer != "n"
    puts "Enter an option below by typing the number or 'n' to exit:"
    puts "1. List Planets"
    puts "2. Planet Details"
    puts "3. Add a Planet"
    puts "n. Exit Program"
    
    answer = gets.chomp.downcase
    
    if answer == "1"
      puts solar_system.list_planets
      puts "Would you like to continue? (y/n)"
      answer = gets.chomp.downcase
      
    elsif answer == "2"
      puts solar_system.planet_details
      puts "Would you like to continue? (y/n)"
      answer = gets.chomp.downcase
      
    elsif answer == "3"
      puts "What planet would you like to add?"
      input_planet = gets.chomp.capitalize
      puts "What color is the planet?"
      input_color = gets.chomp
      puts "What is the mass of your planet (kg)?"
      input_mass = gets.chomp
      puts "How far away is your planet from the sun? (km)"
      input_distance = gets.chomp
      puts "What is a fun fact of your planet?"
      input_fun_fact = gets.chomp
      
      new_planet = Planet.new(input_planet,input_color,input_mass,input_distance,input_fun_fact)
      solar_system.add_planet(new_planet)
    end
    
  end
  
  
  # Wave 2
  puts
  list = solar_system.list_planets
  puts list
  puts earth.summary
  puts saturn.summary
  found_planet = solar_system.find_planet_by_name("Earth")
  puts found_planet
  puts found_planet.summary
  
end

main
