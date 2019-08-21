require_relative 'lib/planet'
require_relative 'lib/solar_system'

def main

    # Wave 3
    # ==========================================
    # Restructure main to do the following:

    #   Create a SolarSystem and add some Planets
    solar_system = SolarSystem.new('Sol')

    mercury = Planet.new('Mercury', 'red', 6.8794, 7.33, 'is far')
    venus = Planet.new('venus', 'grey', 6.6565, 9.33, 'is beatiful')
    earth = Planet.new('Earth', 'green', 5.972e24, 5.5, 'Only planet known to support life')
    mars = Planet.new('Mars', 'pink', 5.972e24, 5.5, 'Only planet known to support life')
    jupiter = Planet.new('Jupiter', 'blue', 5.972e24, 5.5, 'Only planet known to support life')

    # add planets to the solar system
    solar_system.add_planet(mercury)
    solar_system.add_planet(venus)
    solar_system.add_planet(earth)
    solar_system.add_planet(mars)
    solar_system.add_planet(jupiter)

    #   Enter a control loop that repeatedly asks the user what to do next. 
    #   The two options at this point are list planets and exit.

    loop do
      puts "\nSelect one of the choices from below: "
      print "Type 1 to list planets, 2 to view planet details, 3 to add planet and 4 to exit: "

      user_input = gets.chomp.to_i
      
      if user_input == 4
        break
      elsif user_input == 1
        list = solar_system.list_planets()
        puts list
      elsif user_input == 2
        planet_details(solar_system)
      elsif user_input == 3
        add_planet(solar_system)

      end

    end
     
  end


  def planet_details(solar_system)
    print "Enter the name of the planet you want to learn about: "
    planet_name = gets.chomp
    planet = solar_system.find_planet_by_name(planet_name)
    puts planet.summary
  end

  def add_planet(solar_system)
    print "Please enter the planet details: "
    print "Enter planet name: "
    planet_name = gets.chomp
    print "Enter planet color: "
    planet_color = gets.chomp
    print "Enter planet mass: "
    planet_mass = gets.chomp.to_f
    print "Enter planet distance from sun: "
    planet_distance = gets.chomp.to_f
    print "Enter a fun fact about this planet: "
    planet_fun_fact = gets.chomp
    
    planet = Planet.new(planet_name,planet_color,planet_mass,planet_distance,planet_fun_fact)
    solar_system.add_planet(planet)
    puts "Planet added!"
  end



  main
