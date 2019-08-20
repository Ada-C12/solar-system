require_relative "lib/planet"
require_relative "lib/solar_system"

def get_number
  user_planet_number = gets.chomp
  while user_planet_number.empty? || (!user_planet_number.match("^[\-0-9]*$"))
    puts "Invalid input. Please enter a number in standard notation"
    user_planet_number = gets.chomp
  end
  return user_planet_number.to_f
end

def main
  untenable = SolarSystem.new("Untenable")
  poddo = Planet.new(name: "Poddo", color: "green", mass_kg: 5.972, distance_from_sun_km: 1.496e8, fun_fact: "This planet is actually a frozen pea")
  normie = Planet.new(name: "Normie", color: "peach", mass_kg: 4.867e24, distance_from_sun_km: 1.0826e8, fun_fact: "Normie isn;t the life of the party at Untenable parties, but other planets generally like them.")
  exploder = Planet.new(name: "Exploder", color: "fire", mass_kg: 1.847e26, distance_from_sun_km: 1.0826e5, fun_fact: "Exploder is too close to the Sun. It is going to explode.")
  untenable.add_planet(poddo)
  untenable.add_planet(normie)
  untenable.add_planet(exploder)

  user_input = nil
  puts "Hey user, what do you want to do? 
    'list' to list the planets, 
    'details' to show planet information,
    'add' to add another planet to the solar system (How wonderful to discover a new planet!)
    'distance' to determine the distance between two selected planets
    'exit' to leave the program"
  user_input = gets.chomp.downcase
  until user_input == "exit"
    if user_input == "list"
      list = untenable.list_planets
      puts list
    elsif user_input == "details"
      puts "Which planet do you want to learn more about?"
      puts untenable.list_planets
      planet_select = gets.chomp.downcase
      planet = untenable.find_planet_by_name(planet_select)
      puts planet.summary
      while planet == nil
        puts "Please enter a REAL planet name. Select from the list."
        puts untenable.list_planets
        planet_select = gets.chomp.downcase
        planet = untenable.find_planet_by_name(planet_select)
      end
    elsif user_input == "add"
      puts "What is the name of your new planet?"
      user_planet = gets.chomp.downcase
      puts "What color is your planet?"
      user_planet_color = gets.chomp.downcase
      puts "What is the mass of your planet in kgs? Please enter a number with standard notation"
      user_mass = get_number
      puts "How far from the Untenable Star is your planet in kms? Please enter a number in standard notation"
      user_distance = get_number
      puts "Tell me something cool about your planet."
      user_fun_fact = gets.chomp
      user_planet = Planet.new(name: user_planet, color: user_planet_color, mass_kg: user_mass, distance_from_sun_km: user_distance, fun_fact: user_fun_fact)
      untenable.add_planet(user_planet)
      puts "Cool! Here's the summary of your planet!"
      puts user_planet.summary
    elsif user_input == "distance"
      distance = untenable.distance_between
      puts "The two planets  are #{"%1e" % distance} km apart"
    else
      puts "INVALID INPUT. Please enter 'list' or 'exit'."
    end
    puts "What do you wanna do next? 
    'list' to list the planets, 
    'details' to show planet information,
    'add' to add another planet to the solar system (How wonderful to discover a new planet!)
    'distance' to determine the distance between two selected planets
    'exit' to leave the program"
    user_input = gets.chomp.downcase
  end
end

main
