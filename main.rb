require_relative "planet"
require_relative "solar_system"

solar_system = SolarSystem.new('Sun')
earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life', 'none (we are not cool enough)')
mercury = Planet.new('Mercury', 'dark-grey', 3.285e23, 5.791e7, 'Closest planet to sun', 'Sailor Mercury')
solar_system.add_planet(earth)
solar_system.add_planet(mercury)

puts "Welcome to Galaxy Academy!"
puts "Would you like to learn about our current planets or add a new planet to our Solar System? [Learn/Add]"
user_choice = gets.chomp.capitalize

while user_choice != nil

  if user_choice == "Learn"
    puts "Currently...\n" + solar_system.list_planets
    puts "Which planets would you like to learn more about?"
    planet_choice = gets.chomp.capitalize
    puts solar_system.find_planet_by_name(planet_choice).summary
  elsif user_choice == "Add"
    puts "Please tell us more about your planet :)"
    puts "What's the name of your planet?"
    new_planet_name = gets.chomp.capitalize
    puts "What's the color of your planet?"
    new_planet_color = gets.chomp.downcase
    puts "What's the weight of your planet in kg?"
    new_planet_mass = gets.chomp.to_i
    puts "What's the distance of your planet from the sun in km?"
    new_planet_distance = gets.chomp.to_i
    puts "What's one fun fact about your planet?"
    new_planet_fun = gets.chomp
    puts "Who is your planet's guardian from Sailor Moon?"
    new_planet_guardian = gets.chomp
    new_planet_name = Planet.new(new_planet_name, new_planet_color, new_planet_mass, new_planet_distance, new_planet_fun, new_planet_guardian)
    solar_system.add_planet(new_planet_name)
    puts "Now...\n" + solar_system.list_planets
  else 
    puts "Sorry that's not an option."
  end

  puts "Would you like to learn about our current planets or add a new planet to our Solar System? [Learn/Add]"
  user_choice = gets.chomp.capitalize

end