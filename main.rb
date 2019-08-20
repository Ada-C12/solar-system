require_relative 'planet.rb'
require_relative 'solar_system.rb'

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
  
  while choice != 3
    puts "\nSolar System Program"
    puts "Menu:"
    puts "1. List Planets"
    puts "2. Planet Details"
    puts "3. Exit"
    print "Enter Menu Choice: "
    choice = gets.chomp.to_i
    case choice
    when 1
      list = solar_system.list_planets
      puts "\n#{list}"
    when 2
      print "\nEnter Planet Name: "
      planet = gets.chomp.to_s.capitalize
      found_planet = solar_system.find_planet_by_name(planet)
      puts "\n#{found_planet}"
    when 3
      return 
    else
      puts "Invalid Menu Choice"
    end
  end
end

main

#Wave 1 & 2 Main
# def main
#   solar_system = SolarSystem.new('Sol')
#   earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
#   mars = Planet.new('Mars', 'red', 6.39e23, 2.279e8, 'Named after the Roman God of War')
#   mercury = Planet.new('Mercury', 'gray', 3.3011e23, 77e7, 'Has the shortest orbital period, 87.97 days')

#   solar_system.add_planet(earth)
#   solar_system.add_planet(mars)

#   list = solar_system.list_planets
#   puts list


#   found_planet = solar_system.find_planet_by_name('Earth')
#   puts found_planet
#   puts found_planet.summary
# end
