require_relative 'planet'
require_relative 'solar_system'


def main
  fun_stars = "****************************\n"
  puts "We are going to take a look at a solar system."
  
  
  solar_system = SolarSystem.new('Sun')
  earth = Planet.new('Earth', 'blue/green', 5.972e24, 1.496e8, 'it is the only planet which supports life.')
  pluto = Planet.new('Pluto', 'grey', 1.309e22, 5.913e6,'it is named after the Roman god of the underworld')
  solar_system.add_planet(earth)
  solar_system.add_planet(pluto)
  
  
  def is_correct_input?(y_or_n)
    input_validation = ['y', 'n']
    until input_validation.include?(y_or_n) 
      puts "incorrect input. please enter again:"
      y_or_n = gets.chomp.downcase
    end
  end
  
  done = nil
  until done 
    puts "Want to list the planets orbiting the ** #{ solar_system.star_name } ** ? \n enter (y) to list planets \n enter (n) to continue"
    list_choice = gets.chomp.downcase
    is_correct_input?(list_choice)
    
    if list_choice == "y"
      puts fun_stars + solar_system.list_planets + fun_stars
      done = nil
    elsif list_choice == "n"
      done = true
    end
    
    done = nil
    
    until done
      puts "Which planet do you want to learn about? \n enter (planet name) to list information about a planet \n enter (n) to continue"
      which_planet_choice = gets.chomp.downcase
      
      if which_planet_choice != "n"
        found_planet = solar_system.find_planet_by_name(which_planet_choice)
        puts "#{ fun_stars } #{ found_planet.summary } \n#{ fun_stars } "
        
      elsif which_planet_choice == "n"
        done = true  
      end  
    end  
    
    done = nil
    
    until done
      puts fun_stars
      puts "Would you like to add a planet to orbit the ** #{ solar_system.star_name } ** ? \n enter (y) to add a planet \n enter (n) to continue"
      add_planet_choice = gets.chomp.downcase
      is_correct_input?(add_planet_choice)
      
      if add_planet_choice == "n"
        done = true
        
      elsif add_planet_choice == "y"
        characteristics = ["name", "color", "mass in kg", "distance from", "fun fact"]
        characteristics.each_with_index do |characteristic, i|
          puts "#{ characteristic }:"
          characteristics[i] = gets.chomp
        end
        
        new_planet = Planet.new(characteristics[0], characteristics[1], characteristics[2], characteristics[3], characteristics[4])
        solar_system.add_planet(new_planet)
        done = true
        
      end
    end
    
    puts fun_stars
    puts "Care to start over to see updated information?? \n enter (y) to access information about the solar system \n enter (n) to exit the program "
    final_answer = gets.chomp
    is_correct_input?(final_answer)
    if final_answer.downcase == "y"
      done = nil
    else
      
      puts "#{ fun_stars }It was a pleasure spending time with you in this far-far away land. \n #{ fun_stars }"
      done = true
    end
  end
end

main
