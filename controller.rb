class Controller
  def initialize(solar_system)
    @solar_system = solar_system
    @options = ['list', 'planet details', 'add planet', 'exit']
  end
  
  def get_option
    begin
      puts "options:"
      @options.each { |opt| puts "'#{ opt }'" }
      option = gets.chomp
    end until @options.include? option
    
    return option
  end

  def planet_details
    puts "\nwhich planet do you wish to learn about?"
    names = @solar_system.planets.map(&:name)
    
    begin
      puts names
      name = gets.chomp
    end until names.include? name
    
    puts @solar_system.find_planet_by_name(name).summary
  end

  def add_planet
    puts "what is the planet called?"
    name = gets.chomp

    puts "what color is it?"
    color = gets.chomp

    puts "what is its mass in kilograms?"
    kg = gets.chomp

    puts "how many kilometers is it from the sun?"
    dist = gets.chomp

    puts "what's a fun fact about this planet?"
    fact = gets.chomp

    planet = Planet.new(name, color, kg, dist, fact)
    @solar_system.add_planet(planet)
  end

  def control_loop
    loop do
      puts "\nwhat would you like to do next?\n"
      option = get_option
      
      case option
        when 'list'
          puts @solar_system.list_planets
        when 'planet details'
          planet_details
        when 'add planet'
          add_planet
        when 'exit'
          exit
      end
    end
  end
end
