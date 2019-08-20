require_relative 'planet'
require_relative 'solar_system'

def main
  # Create a SolarSystem
  solar_system = SolarSystem.new('Sol')
  
  mars = Planet.new("Mars", "red", 6.39e23, 227940000, "takes its name from the Roman god of war")
  jupiter = Planet.new("Jupiter", "brown", 1.898e27, 778547200, "is the fastest spinning planet in the solar system")
  
  # and add some Planets
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  
  # Enter a control loop that repeatedly asks the user what to do next
  puts "What action would you like to take? List Planets, Planet Details, Add Planet, or Exit."
  control = gets.chomp
  
  until control.downcase == "exit"
    case control.downcase
    when "exit", "quit"
      exit(0)
    when "list", "list planets"
      puts solar_system.list_planets
      
      puts "\nWhat action would you like to take? List Planets, Planet Details, or Exit."
      control = gets.chomp
    when "planet details", "details", "detail"
      puts "What planet would you like to learn about?"
      planet = gets.chomp.capitalize
      
      found_planet = solar_system.find_planet_by_name(planet)
      puts "\n"
      puts found_planet.summary
      
      puts "\nWhat action would you like to take? List Planets, Planet Details, or Exit."
      control = gets.chomp
    when "add", "add planet"
      puts "What are the details of the planet you would like to add?"
      puts "\nEnter the Planet Name:"
      name = gets.chomp.capitalize
      puts "\nEnter the Planet Color:"
      color = gets.chomp.downcase
      puts "\nEnter the Planet mass kg:"
      mass_kg = gets.chomp
      puts "\nEnter the Planet distance from the sun in km:"
      distance_from_sun_km = gets.chomp
      puts "\nEnter a fun fact about the #{name}:"
      fun_fact = gets.chomp.downcase
      
      user_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
      solar_system.add_planet(user_planet)
      
      puts "\nWhat action would you like to take? List Planets, Planet Details, or Exit."
      control = gets.chomp
      # handles invalid user input
    else
      puts "Please enter Valid input: List Planets, Planet Details, Add Planet, or Exit."
      control = gets.chomp
    end
  end
  
end

main
