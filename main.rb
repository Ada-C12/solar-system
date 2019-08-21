require_relative "lib/planet"
require_relative "lib/solar_system"

# Open main method containing code for user to interact with in CL
#Create some instances of planets and add them to the solar system
def main
  untenable = SolarSystem.new("Untenable")
  poddo = Planet.new(name: "Poddo", color: "green", mass_kg: 5.972, distance_from_sun_km: 1.496e8, fun_fact: "This planet is actually a frozen pea.")
  normie = Planet.new(name: "Normie", color: "peach", mass_kg: 4.867e24, distance_from_sun_km: 1.0826e8, fun_fact: "Normie isn't the life of the party at Untenable parties, but other planets generally like them.")
  exploder = Planet.new(name: "Exploder", color: "fire", mass_kg: 1.847e26, distance_from_sun_km: 1.0826e5, fun_fact: "Exploder is too close to the Sun. It is going to explode.")
  untenable.add_planet(poddo)
  untenable.add_planet(normie)
  untenable.add_planet(exploder)

  user_input = nil

  # Ask user what they first want to do in the CL of the options and get input.
  puts "Hey user, what do you want to do? 
    'list' to list the planets, 
    'details' to show planet information,
    'add' to add another planet to the solar system (How wonderful to discover a new planet!)
    'distance' to determine the distance between two selected planets
    'exit' to leave the program"
  user_input = gets.chomp.downcase

  # Accept user input in loop until their input is 'exit', in which case, quit the program.
  until user_input == "exit"
    case user_input

    # Call list_planets method to display to user
    when "list"
      list = untenable.list_planets
      puts list

      # Get user input to print out details from the summary method (planet.rb)
      # Validate input to check that it is one of the included planets.
    when "details"
      puts "Which planet do you want to learn more about?"
      puts untenable.list_planets
      planet = get_planet(untenable)
      puts planet.summary

      # Allow user to input all parameters for the creation of an instance of Planet and add it to the solar system
      # Validate input for each through helper methods.
      # Print the summary of the newly added planet

    when "add"
      puts "What is the name of your new planet?"
      user_planet = get_string.downcase

      while untenable.find_planet_by_name(user_planet).name != ""
        puts "A planet with that name already exists. Try and be ORIGINAL."
        user_planet = get_string.downcase
      end

      puts "What color is your planet?"
      user_planet_color = get_string.downcase
      puts "What is the mass of your planet in kgs? Please enter a number with standard notation"
      user_mass = get_number
      puts "How far from the Untenable Star is your planet in kms? Please enter a number in standard notation"
      user_distance = get_number
      puts "Tell me something cool about your planet."
      user_fun_fact = get_string.downcase
      user_planet = Planet.new(name: user_planet, color: user_planet_color, mass_kg: user_mass, distance_from_sun_km: user_distance, fun_fact: user_fun_fact)
      untenable.add_planet(user_planet)
      puts "\nCool! Here's the summary of your new planet!"
      puts user_planet.summary

      # Get user input of two planets to find distance between and validate input.
      # use distance_between method (solar_system.rb) to obtain calculation
    when "distance"
      puts "What is the name of the first of the two planets you would like to find the distance between?"
      first_planet = get_planet(untenable)

      puts "What is the name of the second planet"
      second_planet = get_planet(untenable)

      distance = untenable.distance_between(first_planet, second_planet)
      puts "The two planets  are #{"%1e" % distance} km apart"

      # Display message for an invalid user action selection.
    else
      puts "INVALID INPUT. Try again."
    end

    # Repeat ask of user to decide on next action.
    puts "\nWhat do you wanna do next? \n
    'list' to list the planets, 
    'details' to show planet information,
    'add' to add another planet to the solar system (How wonderful to discover a new planet!)
    'distance' to determine the distance between two selected planets
    'exit' to leave the program"
    user_input = gets.chomp.downcase
  end
end

# Helper method to obtain user input of planet names and use find_planet_by_name(solar_system.rb) to validate it
def get_planet(solar_system)
  planet = gets.chomp.downcase
  planet_select = solar_system.find_planet_by_name(planet)

  while planet_select.name.downcase != planet
    puts "That planet is not in this solar system. Please try again."
    planet = gets.chomp.downcase
    planet_select = solar_system.find_planet_by_name(planet)
  end

  return planet_select
end

# Helper method to check that user input numbers are not 0, empty, and are a number.
def get_number
  user_planet_number = gets.chomp
  while user_planet_number.empty? || (!user_planet_number.match("^[0-9]*$")) || user_planet_number.to_i <= 0
    puts "Invalid input. Please enter a number in standard notation"
    user_planet_number = gets.chomp
  end
  return user_planet_number.to_f
end

# Helper method to check that user input of string is not empty.
def get_string
  user_planet_string = gets.chomp
  while user_planet_string.empty?
    puts "Invalid input. Please try again."
    user_planet_string = gets.chomp
  end
  return user_planet_string
end

main
