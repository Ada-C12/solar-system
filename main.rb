require './planet'
require './solar_system'
require 'colorize'

########## HELPER FCNS ##########
def ap(string)
  # prints (not puts!) out string in cyan via colorize gem
  print string.colorize(:cyan)
end

def showMenu(menu)
  # Given a menu of array of hashes, print out menu choices in cyan
  ap "\nPlease choose from the letters below:\n"
  menu.each do |menu_hash|
    ap "  #{menu_hash.keys[0]}: #{menu_hash.values[0]}\n"
  end
  ap ">>> "
end

def assemblePlanetMenu(array_planet_objs)
  # Given array of Planet objs 
  # Return [ {A: planet_1_name_str}, {B: planet_2_name_str}, etc ]
  planet_menu = []
  ascii_count = 65
  array_planet_objs.each do |planet_obj|
    curr_key = (ascii_count.chr).to_sym
    planet_menu << {curr_key => planet_obj.name}
    ascii_count += 1
  end
  return planet_menu
end

def evalInput(menu)
  # menu format = [ {key1: str1}, {key2: str2}, {key3: str3}, etc ]
  # Keep prompting user until a valid { as_key:keyChoice, as_string:strChoice} can be returned.
  
  # assemble acceptable inputs
  acceptable_keys, acceptable_values = [], []
  menu.each do |menu_hash|
    acceptable_keys << menu_hash.keys[0].to_s.upcase
    acceptable_values << menu_hash.values[0].upcase
  end
  
  choice_valid = false
  while choice_valid == false
    # get input
    showMenu(menu)
    choice = gets.chomp
    
    # evaluate input
    if acceptable_keys.include? choice.upcase
      key_choice = choice.upcase.to_sym
    elsif acceptable_values.include? choice.upcase
      value_choice = titleize(choice)
    else
      puts "Invalid input, please pick a letter from the menu!"
      next
    end
    
    # if key_choice is known, then find value_choice, and vice versa
    menu.each do |menu_hash|
      if !key_choice && (menu_hash.values[0] == value_choice)
        key_choice = menu_hash.keys[0]
      elsif !value_choice && (menu_hash.keys[0] == key_choice)
        value_choice = menu_hash.values[0]
      end
    end
    
    return { as_key:key_choice, as_string:value_choice }
  end
end

def titleize(multi_word_string)
  # Returns a Multi Word String
  words_array = multi_word_string.split.map do |word|
    word.capitalize
  end
  multi_word_string = words_array.join(" ")
  return multi_word_string
end

def getPlanet(planet_name_string, array_planet_objs)
  # given planet_name_string, return corresp Planet obj from array_planet_objs
  array_planet_objs.each do |planet_obj|
    if planet_obj.name.upcase == planet_name_string.upcase
      return planet_obj
    end 
  end
  puts "#{planet_name_string} does not exist in array #{array_planet_objs}"
end

def getString(promptQ)
  # keep prompting user until a string can be returned
  input_valid = false
  while input_valid == false
    print "#{promptQ}\t>>> "
    input = gets.chomp
    unless input == ""
      # will accept numerical string coordinates in case of unnamed planets
      return input
    else
      puts "You must put in something" 
    end
  end
end

def getFloat(promptQ)
  # keep prompting user until a float can be returned
  input_valid = false
  while input_valid == false
    print "#{promptQ}\t>>> "
    input = gets.chomp
    unless input == ""
      begin
        input = Float(input)
        return input
      rescue => exception
        puts "#{input} is not a number!"
      end
    else
      puts "You must put in something" 
    end
  end
end
########## end HELPER FCNS ##########





def main
  # SET UP individual Planet & SolarSystem objs
  mercury = Planet.new('mercury', 'blue', 1, 1000, 'No aliens')
  venus = Planet.new('venus', 'pink', 2, 2000, 'Bunch of women on it')
  earth = Planet.new('Earth', 'blue-green', 3, 3000, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 4, 4000, 'It has aliens on it')
  jupiter = Planet.new('jupiter', 'silver', 5, 5000, 'It is huge')
  saturn = Planet.new('saturn', 'white', 6, 6000, 'Purty ring!')
  uranus = Planet.new('uranus', 'brown', 7, 7000, "Fun to say")
  neptune = Planet.new('neptune', 'turquoise', 8, 8000, 'Fish?')
  pluto = Planet.new('pluto', 'black', 9, 9000, 'Kicked out of the party')
  
  orig_9_planets = [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto]
  
  sun = SolarSystem.new('Sun')
  orig_9_planets.each do |planet_obj|
    sun.add_planet(planet_obj)
  end
  
  # SET UP planet_menu
  planet_menu = assemblePlanetMenu(orig_9_planets)
  
  # SET UP main_menu
  main_menu = [ 
  {A:"List Planets"}, 
  {B:"Planet Details"}, 
  {C:"Add Planet"},
  {D:"Get Distance"},
  {E:"Exit"} ]
  
  # START DECISION LOOP
  exit_program = false
  while exit_program == false
    # get user choice from menu
    choice = evalInput(main_menu)[:as_key]
    puts
    
    case choice
    when :A
      puts sun.list_planets
      
    when :B
      puts "Which planet would you like to read about?"
      planet_choice = evalInput(planet_menu)[:as_string]
      planet_obj = getPlanet(planet_choice, sun.planets)
      puts "", planet_obj.summary
      
    when :C
      puts "Tell me about the planet you want to add..."
      # limitations: Not going to check planet_name, planet_color or planet_fun_fact for nonsense strings
      planet_name = getString("What's the name of your new planet?").capitalize
      planet_color = getString("What's the color of #{planet_name}")
      planet_mass = getFloat("How many kg does it weigh?")
      planet_dist_from_sun = getFloat("How many km away is it from the sun?")
      planet_fun_fact = getString("Tell me a fun fact about #{planet_name}")
      # set up affected objects & variables
      new_planet = Planet.new(planet_name, planet_color, planet_mass, planet_dist_from_sun, planet_fun_fact)
      sun.add_planet(new_planet)
      planet_menu = assemblePlanetMenu(sun.planets)
      
    when :D
      puts "#########################\nFor your first planet...\n#########################"
      first_planet_choice = evalInput(planet_menu)[:as_string]
      first_planet_obj = getPlanet(first_planet_choice, sun.planets)
      puts
      puts "#########################\nFor your second planet...\n#########################"
      second_planet_choice = evalInput(planet_menu)[:as_string]
      second_planet_obj = getPlanet(second_planet_choice, sun.planets)
      
      if first_planet_obj == second_planet_obj
        puts "Both your choices are the same, I mean... come on!"
      else
        first_planet_str = first_planet_obj.name
        second_planet_str = second_planet_obj.name
        answer = sun.distance_between(first_planet_str, second_planet_str)
        puts "\nThe distance between #{first_planet_str} and #{second_planet_str} is #{answer}km"
        puts "Yeah... I don't know how your planets haven't collided already" if answer == 0
      end
      
    when :E
      puts "Exiting...\n".colorize(:red)
      exit 
    end
    
    puts
  end
end

main
