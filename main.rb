require_relative '../solar-system/lib/planet'
require_relative '../solar-system/lib/solar_system'


def  main 
    neptune = Planet.new(name:'Neptune', color:'Blue', mass_kg: 1.024e26, distance_from_sun_km: 4.494e9, fun_fact:'Neptune has rings')
    saturn = Planet.new(name: "Saturn", color:"Red", mass_kg: 5.683e26, distance_from_sun_km:1.434e9, fun_fact:"Saturn is a flattened ball")
    earth = Planet.new(name:'Earth', color: 'blue-green', mass_kg: 5.972e24, distance_from_sun_km:1.496e8,fun_fact:'Only planet known to support life')
    solar_system = SolarSystem.new('Sol')
    solar_system.add_planet(earth)
    solar_system.add_planet(saturn)
    solar_system.add_planet(neptune)
    
    choice = true  
    
    while choice 
        puts "What do you want to do next? leave, list planets, add planet, or planet details"
        next_action = gets.chomp.strip.downcase 
        case next_action 
        when "list planets"
            puts solar_system.list_planets 
            
        when "leave"
            choice = false 
        when "planet details"
            puts "please enter the name of the planet you want details on "
            planet_detail = gets.chomp.strip
            found_planet = solar_system.find_planet_by_name(planet_detail)
            puts found_planet.summary 
        when "add planet"
            puts "what is the name of the planet?"
            input_name = gets.chomp.strip 
            puts "what is the color of #{input_name}?"
            input_color = gets.chomp.strip 
            puts "what is the mass (in kgs) of #{input_name}?"
            input_mass = gets.chomp.to_f
            puts "what distance is #{input_name} from the sun (in km) "
            input_distance_from_sun = gets.chomp.to_f
            puts "Enter a fun fact about #{input_name}"
            input_fun_fact = gets.chomp
            
            
            new_planet = Planet.new(name: input_name, color: input_color, mass_kg: input_mass, distance_from_sun_km: input_distance_from_sun, fun_fact: input_fun_fact)
            solar_system.add_planet(new_planet)
            
            
            
        end 
        
        
    end 
    
    
    
    
    
    
    
    
    
    
end




main 

