require_relative 'planet'
require_relative 'solar_system'

def main
  earth = Planet.new('Earth', 'Blue-green', 5.972e24, 1.496e8, 'Only planet known to support capitalism :/')
  venus = Planet.new('Venus', 'Pink', 8.6e24, 2.36e8, 'Gayest planet probably!')
  mars = Planet.new('Mars', 'Reddish', 2.4e2, 6.17e5, 'Kind of like Earth, but red!')
  
  vega = SolarSystem.new('Vega')
  
  vega.add_planet(earth)
  vega.add_planet(venus)
  
  menu = "\nThe solar system is soo vast! What do ya wanna know about?
  A. List of planets
  B. Planet details
  C. Add a planet"
  
  puts menu 
  input = gets.chomp 
   
  while input != "exit"

    if input.downcase == "a"
      puts vega.list_planets 

    elsif input.downcase == "b"
      puts "\n Which planet do you want to know details of?"
      planet_selection = gets.chomp

      if found_planet = vega.find_planet_by_name(planet_selection)
        puts found_planet.summary 
      else
        puts "thats not a planet name, sorry buddy try again!"
        next
      end
      
    elsif input.downcase == "c"
      puts "Whats the name of your planet?"
      new_planet_name = gets.chomp 

      if vega.find_planet_by_name(new_planet_name) != nil 
        puts "that planet already exists >:( try another"
        next 
      end 

      puts "What color is it?"
      new_planet_color = gets.chomp
      puts "What is the mass (in kg)?"
      new_planet_mass = gets.chomp.to_i
      puts "What is its distance from the sun?"
      new_planet_distance = gets.chomp
      puts "What is a fun fact about your planet?"
      new_planet_funfact = gets.chomp 

      new_planet = Planet.new(new_planet_name, new_planet_color, new_planet_mass, new_planet_distance, new_planet_funfact)
      vega.add_planet(new_planet)

    else 
      puts "\n thats not right, try again"
    end
    puts menu
    input = gets.chomp
  end   
end

main
