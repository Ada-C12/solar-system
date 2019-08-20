require_relative 'lib/planet'
require_relative 'lib/solar_system'
def main

    puts "Welcome to the Solar System Program:"
    #Instantiated a SolarSystem object:
    sun = SolarSystem.new("sun") 


    #Adding planets to solarsystem:
    earth = Planet.new('earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    jupiter = Planet.new("jupiter", "orange", 1.898e27, 7.789127e8, ' It is a gas giant and the largest in the Solar System' )
    mars = Planet.new("mars","red", 6.38e23, 2.282486104e8, 'Elon Musk wants to colonize it!' )

    sun.add_planet(earth)
    sun.add_planet(jupiter)
    sun.add_planet(mars)

    puts "Here are the planets in your SolarSystem:"
    puts "Would you like enter the SolarSystem program continue enter yes or no"
    user_response = gets.chomp

    # puts "Here are the planets in your solarsystem"
    # puts sun.list_planets
    
    while user_response == 'yes' do
        puts "Here are the planets in your SolarSystem:"
        puts sun.list_planets
        puts "would you like to continue?"
        user_response = gets.chomp
      exit
    end
    
# sun.add_planet(earth)
# puts sun.list_planets

# puts  found_planet = sun.find_planet_by_name("earth")

# puts found_planet.summary


end

main