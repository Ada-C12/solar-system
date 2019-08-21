# main.rb
require_relative 'planet'
require_relative 'solar_system'

# define method for user's selected planet
def user_planet_pick(solar_system)
  puts "Which planet are you interested in learning about?"
  your_planet = gets.chomp.capitalize
  puts "Great, you want to learn about #{your_planet}."
  puts "Here are planet details about #{solar_system.find_planet_by_name(your_planet).summary}"
end

# define method for user's NEW planet
def users_created_planet(solar_system)
  puts "Let's add your planet! We need some information first."
  puts "Please enter the name of your planet."
  user_planet = gets.chomp.capitalize
  puts "What is the color of #{user_planet}?"
  user_color = gets.chomp.capitalize
  puts "#{user_color}, how glorious!"
  puts "What is the mass, or size of #{user_planet}?"
  user_planet_size = gets.chomp.to_i
  puts "Now that we know #{user_planet}'s color, and size, can you tell me how far away it is from you right now?"
  user_distance = gets.chomp.to_i
  puts "Perfect. Last info I need to create your planet: what is a fun fact about your planet?"
  user_fun_fact = gets.chomp
  
  # added new instance of user's planet, along with details
  user_new_planet = Planet.new(user_planet, user_color, user_planet_size, user_distance, user_fun_fact)
  
  # added user's new planet to the solar_system
  solar_system.add_planet(user_new_planet)
end

def main
  earth = Planet.new("Earth", "blue and white", "5.972 × 10^24 kg", "149.6 million km", "Earth is the fifth largest planet in the solar system")
  # puts earth.summary 
  mars = Planet.new("Mars", "red and orange", "mass_kg 6.417e23", "2.2798 million km", "Mars is the fourth planet from the Sun")
  # puts mars.summary
  venus = Planet.new("Venus", "cafe o'le", "4.867 × 10^24 kg", "67.24 million km", "Venus is second to the sun in brightness")
  # puts venus.summary 
  mercury = Planet.new("Mercury", "grey and cold", "5.972 × 10^24 kg", "234235 million km", "Mercury has wrinkles")
  # puts mercury.summary 
  jupiter = Planet.new("Jupiter", "swirly sherbert and white ", "5.972 × 10^24 kg", "1 million km", "Jupiter has 67 moons")
  
  solar_system = SolarSystem.new("THE SUN")
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(venus)
  solar_system.add_planet(mercury)
  solar_system.add_planet(jupiter)
  puts solar_system.list_planets
  
  found_planet = solar_system.find_planet_by_name('Earth')
  puts found_planet
  puts found_planet.summary
  
  # continue to loop through questions with user
  while true 
    
    # case command for user_input
    puts "What would you like to do next? Would you like to see a 'list planets' or 'exit' or 'planet details' or 'add planet'?"
    user_input = gets.chomp
    case user_input
    when "list planets"
      puts "Here is your list of planets: #{solar_system.list_planets}"
      
      # new method: user_planet_pick created to ask planet choice and display details
    when "planet details"
      user_planet_pick(solar_system)
      
      # refer to users_created_planet method: add_planet
    when "add planet"
      users_created_planet(solar_system)
      
      # if user selects 'exit', end program by exiting
    when "exit"
      exit
    end
  end
end

# invoke main
main
