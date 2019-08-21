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
    print "\nWhich planet are you curious about? "
    planet_sought = gets.chomp
    puts solar_system.produce_planet_details(planet_sought)
  when "C"
    solar_system.add_planet(collect_planet_details)
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
      print "\nWhich planet are you curious about? "
      planet_sought = gets.chomp
      puts solar_system.produce_planet_details(planet_sought)
    when "C"
      solar_system.add_planet(collect_planet_details)
    when "D"
      puts "You are now leaving the Solar System!"
      exit
    end
  end
end

def collect_planet_details
  print "\nWhat is your planet's name? "
  planet = gets.chomp.capitalize
  print "What color is #{planet}? "
  color = gets.chomp
  print "What is the mass (in kg) of #{planet}? "
  mass_kg = gets.chomp.to_f
  print "What is #{planet}'s distance from the sun? "
  distance_from_sun_km = gets.chomp.to_f
  print "What is a fun fact about #{planet}? "
  fun_fact = gets.chomp
  added_planet = Planet.new(planet, color, mass_kg, distance_from_sun_km, fun_fact)
  puts "\nSummary of the latest planet added to our solar system: #{added_planet.summary}"
  return added_planet
end

main
