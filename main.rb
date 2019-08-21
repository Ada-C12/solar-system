# Ga-Young Jin, Cohort 12
# Monday, August 19th, 2019
# Week 3, Solar System Project

require_relative 'planet'
require_relative 'solar_system'

def main
  # initiating new solar system and planets
  solar_system = SolarSystem.new('Sol')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.39e23, 2.28e8, 'The planet is named after Mars, the Roman god of war')
  
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  
  # user interaction to explore and search through planets
  do_next = nil
  until do_next == "EXIT" || do_next == "4"
    puts "\nWhat would you like to do?
    1. List planets
    2. Get planet details
    3. Add planet
    4. Exit\n"
    
    do_next = gets.chomp
    
    case do_next
    when "LIST PLANETS", "1"
      puts solar_system.list_planets
    when "GET PLANET DETAILS", "2"
      puts solar_system.planet_details
    when "ADD PLANET", "3"
      solar_system.add_new_planet
    when "EXIT", "4"
    else
      puts "\nYou have entered an invalid response. Please try again."
    end
  end
end

main


