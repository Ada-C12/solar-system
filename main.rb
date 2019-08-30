require_relative 'planet'
require_relative 'solar-system'
require 'pry'

#Wave 3 Main
def main
  solar_system = SolarSystem.new('Sol')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.39e23, 2.279e8, 'Named after the Roman God of War')
  mercury = Planet.new('Mercury', 'gray', 3.3011e23, 77e7, 'Has the shortest orbital period, 87.97 days')
  
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(mercury)
  
  choice = 0
  
  while choice != 4
    puts "\nSolar System Program"
    puts "Menu:"
    puts "1. List Planets"
    puts "2. Planet Details"
    puts "3. Add Planet"
    puts "4. Exit"
    print "Enter Menu Choice: "
    choice = gets.chomp.to_i
    case choice
    when 1 #List Planets
      list = solar_system.list_planets
      puts "\n#{list}"
    when 2 #Planet Details
      print "\nEnter Planet Name: "
      planet = gets.chomp.to_s.capitalize
      found_planet = solar_system.find_planet_by_name(planet)
      puts "\n#{found_planet}"
    when 3 #Add Planet
      print "\nEnter Planet Name: "
      name = gets.chomp.to_s.capitalize
      if solar_system.check_for_planet(name) == false
        print "Enter Color: "
        color = gets.chomp.to_s
        check = 0 
        while check != 1
          print "Enter Mass in kg: "
          mass = gets.chomp.to_f
          if mass > 0
            check = 1
          else
            puts "Invalid Mass, must be greater than 0."
          end
        end
        check = 0
        while check != 1
          print "Distance from the Sun in km: "
          distance = gets.chomp.to_f
          if distance > 0
            check = 1
          else
            puts "Invalid Distance, must be greater than 0."
          end
        end
        print "Enter Fun Fact: "
        fact = gets.chomp.to_s
        new_planet = Planet.new(name, color, mass, distance, fact)
        solar_system.add_planet(new_planet)
      else
        puts "Invalid Entry - Planet Already in Solar System"
      end
    when 4 #Exit
      return 
    else
      puts "Invalid Menu Choice"
    end
  end
end

main

