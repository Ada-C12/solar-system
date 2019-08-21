require_relative 'lib/planet'
require_relative 'lib/solar_system'
def main
    
    puts "Welcome to the Solar System Program:"
    #Instantiated a SolarSystem object, sun solarsystem:
    sun = SolarSystem.new("sun") 
    
    
    #Hard coded planets to SolarSystem:
    earth = Planet.new('earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    jupiter = Planet.new("jupiter", "orange", 1.898e27, 7.789127e8, ' It is a gas giant and the largest in the Solar System' )
    mars = Planet.new("mars","red", 6.38e23, 2.282486104e8, 'Elon Musk wants to colonize it!' )
    
    sun.add_planet(earth)
    sun.add_planet(jupiter)
    sun.add_planet(mars)
    
    #Where User interaction with CLI:
    puts "Would you like enter the SolarSystem program continue enter yes or no"
    user_response = gets.chomp.to_s.downcase
    
    
    #change too true statement instead of yes later
    while user_response == 'yes' do
        #Where I list the planets we have available at moment:
        puts "Here are the planets in your SolarSystem:"
        puts sun.list_planets
        puts "Would you like more information about one of to the planets?"
        user_response = gets.chomp
        
        #Where I ask user if they want planet details:
        puts "Which one would you like more information about?"
        user_choice_planet = gets.chomp.to_s.downcase
        found_planet = sun.find_planet_by_name(user_choice_planet)
        puts found_planet.summary
        
        #Where I allow user to add another planet:
        puts "Would you like to add you own planet to the sun Solarsystem?"
        user_response = gets.chomp.to_s.downcase
        
        puts "What is your planets name?"
        user_planet_name = gets.chomp.to_s.downcase
        
        puts "what is your planets color?"
        user_planet_color = gets.chomp.to_s.downcase
        
        puts "What is the mass of your planet in kg?"
        user_planet_mass = gets.chomp.to_f
        
        puts "What is your planets distance from the sun in km?"
        user_planet_distance = gets.chomp.to_f
        
        puts "What is a cool fact about your planet?"
        user_planet_fact = gets.chomp.to_s.downcase
        
        #Where I add instantiate the users planet name to planets array in Solarsystem:
        user_planet_name = Planet.new(user_planet_name, user_planet_color, user_planet_mass, user_planet_distance, user_planet_fact)
        sun.add_planet(user_planet_name)
        puts sun.list_planets
        
        exit
    end
    
    
    
    
    
    
    
    
    #Planet details
    
    
    
    # sun.add_planet(earth)
    # puts sun.list_planets
    
    # puts  found_planet = sun.find_planet_by_name("earth")
    
    # puts found_planet.summary
    
    
end

main