# main.rb
require_relative 'planet'
require_relative 'solar_system'
require 'pry'

def main

  solar_system = SolarSystem.new('Sun')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  pluto = Planet.new('Pluto', 'blue', 1.309e22, 5.906e38, 'No longer a planet ;(')
  saturn = Planet.new('Saturn', 'yellow-ish brown', 5.683e26, 1.434, 'Saturn has 7 rings!')

  solar_system.add_planet(earth)
  solar_system.add_planet(pluto)
  solar_system.add_planet(saturn)

  list = solar_system.list_planets

  #welcome
  puts "WELCOME TO PLANETS!"
  program_running = true

  while program_running == true
    puts "What would you like to do? Enter the letter key for your selection. Press any other key to exit."
    menu = {
      'A' => "Planet list",
      'B' => "Planet details",
      'C' => "Add planet"
    }
    menu.each do |letter, item|
      puts "#{letter}: #{item}"
    end 

    user_selection = gets.chomp.upcase

    if user_selection == 'A'
      puts list
    elsif user_selection == 'B'
      puts "Which planet would you like to learn about?"
      user_planet_choice = gets.chomp.capitalize 
      found_planet = solar_system.find_planet_by_name(user_planet_choice)
      puts found_planet.summary
    elsif user_selection == 'C'
      puts "Cool, addig new planet. Provide the following info."
      puts "Planet name:"
      planet_name = gets.chomp.capitalize
      planet_instance = planet_name.downcase
      puts "Planet color:"
      planet_color = gets.chomp
      puts "Planet mass in kilograms:"
      planet_mass = gets.chomp
      puts "Planet's distance from in the sun in kilometers:"
      planet_distance = gets.chomp
      puts "Fun fact about planet:"
      planet_fun_fact = gets.chomp
      
      planet_instance = Planet.new(planet_name, planet_color, planet_mass, planet_distance, planet_fun_fact)

      solar_system.add_planet(planet_instance)
      list = solar_system.list_planets
      puts list

    else program_running = false
      exit
    end 
  end 

end

main
