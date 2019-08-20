require_relative "planet"
require_relative "solar_system"

def main
  # Solar System Setup
  system = SolarSystem.new("Sun")

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.39e23, 2.279e8, 'Once had water! Might still?')

  planets = [earth, mars]

  planets.each do |planet|
    system.add_planet(planet)
  end

  # CLI
  menu_options = ["list planets", "planet details", "add planet", "exit"]
  user_input = ""
  until user_input == "exit"
    puts "\nWhat would you like to do next?"
    puts menu_options.join("\n")
    user_input = gets.chomp.downcase
    case user_input
    when "list planets"
      puts "\n#{system.list_planets}"
    when "planet details"
      planet_details_by_name(system)
    when "add planet"
      get_new_planet_details(system)
    when "exit"
      puts "\nexiting solar system"
    else
      puts "\nplease enter an option from the menu."
    end
  end

end

def planet_details_by_name(system)
  puts "\nWhat is the name of the planet you would like to learn about?"
  planets = system.planets
  valid_input = false
  until valid_input == true
    planet_name_input = gets.chomp.capitalize
    valid_input = planets.any? { |planet| planet.name == planet_name_input }
    if valid_input == true
      puts "\nDetails for #{planet_name_input}:"
      planet_to_display = system.find_planet_by_name(planet_name_input)
      puts "#{planet_to_display.summary}"
    else
      puts "\nPlanet not found - please input a different planet name:"
    end
  end
end

def format_detail(required_format, input)
  case required_format
  when "string"
    return input.to_s
  when "number"
    return input.to_f
  else
    raise ArgumentError.new("Invalid input")
  end
end

def get_new_planet_details(system)
  puts "Please enter all information about this new planet."
  request_details = {
    # to_s, or String? ???
    "name" => {format: "string", request: "name"},
    "color" => {format: "string", request: "color"},
    "mass_kg" => {format: "number", request: "mass in kilograms"},
    "distance_from_sun_km" => {format: "number", request: "distance from the solar system center in kilometers"},
    "fun_fact" => {format: "string", request: "fun fact"}
  }

  new_planet_details = {}

  request_details.each do |detail, info|
    input = ""
    until input != ""
      puts "Planet #{info[:request]}:"
      input = gets.chomp
    end
    # info["type"] == "string" ? \
    # new_planet_details[detail] = input.capitalize \
    # : new_planet_details[detail] = input.to_i
    # ORRRR:
    # set newplanetdetails[detail] equal to input sent to formatter
    new_planet_details[detail] = format_detail(info[:format],input)
  end
  puts "new planet details: #{new_planet_details}"
  system.add_planet(Planet.new(new_planet_details["name"], \
    new_planet_details["color"], \
    new_planet_details["mass_kg"], \
    new_planet_details["distance_from_sun_km"], \
    new_planet_details["fun_fact"]))
end

main
