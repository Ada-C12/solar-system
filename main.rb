require_relative '../solar-system/lib/planet'
require_relative '../solar-system/lib/solar_system'

def  main 
    neptune = Planet.new('Neptune', 'Blue', 1.024e26, 4.494e9, 'Neptune has rings')
    
    puts  neptune.name
    puts  neptune.color 
    puts  neptune.mass_kg 
    puts  neptune.distance_from_sun_km  
    puts neptune.fun_fact 
    saturn = Planet.new("Saturn", "Red", 5.683e26, 1.434e9, "Saturn is a flattened ball")
    puts  saturn.name
    puts  saturn.color 
    puts  saturn.mass_kg 
    puts  saturn.distance_from_sun_km  
    puts saturn.fun_fact 
    puts saturn.summary 

    solar_system = SolarSystem.new('Sol')
earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
saturn = Planet.new("Saturn", "Red", 5.683e26, 1.434e9, "Saturn is a flattened ball")
neptune = Planet.new('Neptune', 'Blue', 1.024e26, 4.494e9, 'Neptune has rings')


solar_system.add_planet(earth)
solar_system.add_planet(saturn)
solar_system.add_planet(neptune)



list = solar_system.list_planets 
puts list 

found_planet = solar_system.find_planet_by_name("neptune")
puts found_planet 


    
    
end




main 

