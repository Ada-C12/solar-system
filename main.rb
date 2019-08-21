require_relative 'planet'
require_relative 'solar_system'


def main
  fun_stars = "****************************"
  puts "We are going to take a look at a solar system."
  
  solar_system = SolarSystem.new('Sun')
  earth = Planet.new('Earth', 'blue/green', 5.972e24, 1.496e8, 'it is the only planet which supports life.')
  pluto = Planet.new('Pluto', 'grey', 2, 20, 'it is named after the Roman god of the underworld')
  solar_system.add_planet(earth)
  solar_system.add_planet(pluto)
  
  
  done = nil
  until done 
    puts "List planets? \n enter (y) to list planets \n enter (exit) to exit the program "
    list_choice = gets.chomp.downcase
    if list_choice == "y"
      puts fun_stars
      puts solar_system.list_planets
      puts fun_stars
      done = nil
    elsif list_choice == "exit"
      puts "Thanks for spending time with me in the solar system."
      done = true
    end
    
    done = nil
    until done
      puts "Which planet do you want to learn about? or Exit?"
      which_planet_choice = gets.chomp.downcase
      if which_planet_choice != "exit"
        found_planet = solar_system.find_planet_by_name(which_planet_choice)
        puts fun_stars
        puts found_planet.summary
      elsif which_planet_choice == "exit"
        puts "Thanks for asking for planet info."
        done = true  
      end  
    end  
    done = nil
    until done
      puts "Would you like to add a planet? y/n"
      add_planet_choice = gets.chomp.downcase
      if add_planet_choice == "n"
        done = true
      elsif add_planet_choice == "y"
        characteristics = ["name", "color", "mass in kg", "distance from", "fun fact"]
        characteristics.each_with_index do |characteristic, i|
          puts "#{ characteristic }:"
          characteristics[i] = gets.chomp
        end
        new_planet = Planet.new(characteristics[0], characteristics[1], characteristics[2], characteristics[3], characteristics[4])
        p new_planet 
        solar_system.add_planet(new_planet)
        done = true
      end
    end
    puts "Would you like to list the planets in the solar system again?"
    final_answer = gets.chomp
    if final_answer.downcase == "yes"
      done = nil
    else
      done = true
    end
  end
end

main
