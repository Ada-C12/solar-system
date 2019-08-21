require_relative 'planet'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new('Sun')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'It\'s the only planet known to support life.')
  solar_system.add_planet(earth)

  venus = Planet.new('Venus', 'cream', 4.867e24, 108.2e8, 'It has the longest rotation period of any planet in the solar system.')
  solar_system.add_planet(venus)

  mars = Planet.new('Mars', 'red', 6.42e23, 227.9e8, 'It has a thin atmosphere composed primarily of carbon dioxide.')
  solar_system.add_planet(mars)

  mercury = Planet.new('Mercury', 'grey', 3.3e23, 57.9e8, 'Its orbital period around the sun is the shortest of all the planets in the solar system.')
  solar_system.add_planet(mercury)


  print "\nHello! Welcome to the Solar System! Would you like to (A)-List Planets (B)-Read Planet Details (C)-Add a Planet or (D)-Exit: "
  choice = gets.chomp.upcase

  until ['A', 'B', 'C', 'D'].include?(choice)
    print "Invalid input. Please enter 'A', 'B', 'C' or 'D': "
    choice = gets.chomp.upcase
  end

  case choice
  when "A"
    puts solar_system.list_planets
  when "B"
    puts solar_system.produce_planet_details
  when "C"
    new_planet = solar_system.collect_planet_details
    solar_system.add_planet(new_planet)
  when "D"
    puts "You are now leaving the Solar System!"
    exit
  end

  until choice == 'D'
    print "\nNow would you like to (A)-List Planets (B)-Read Planet Details (C)-Add a Planet or (D)-Exit: "
    choice = gets.chomp.upcase

    until ['A', 'B', 'C', 'D'].include?(choice)
      print "Invalid input. Please enter 'A', 'B', 'C' or 'D': "
      choice = gets.chomp.upcase
    end

    case choice
    when "A"
      puts solar_system.list_planets
    when "B"
      puts solar_system.produce_planet_details
    when "C"
      new_planet = solar_system.collect_planet_details
      puts new_planet
      solar_system.add_planet(new_planet)
    when "D"
      puts "You are now leaving the Solar System!"
      exit
    end
  end
end

main
