class SolarSystem
  
  attr_reader :star_name, :planets
  
  def initialize(star_name, planets = [])
    @star_name = star_name
    @planets = planets
  end
  
  def add_planet(planet)
    @planets << planet
  end
  
  def list_planets
    list = ""
    @planets.each_with_index do |planet, index|
      list += "#{index + 1}. #{planet.name}""\n"
    end
    p list
    return "Planets in #{@star_name}""\n" + list
    
  end 
  
  def find_planet_by_name(selection)
    learn_more = @planets.select { |planet| planet.name.downcase == selection.downcase }
    
    if learn_more.count > 1
      puts "There seems to be more than one planet with that name, here's both:"
      learn_more.each_with_index do |planet, i|
        puts "#{i + 1}. " + planet.summary
      end
      puts "Which one did you want?"
      input = gets.chomp.to_i
      while input < 1 || input > learn_more.count
        puts "I'm sorry, please enter a number selection:"
        input = gets.chomp.to_i
      end
      return learn_more[input - 1]
      
      
    elsif learn_more.count == 1
      return learn_more[0]
    else
      puts "I'm sorry, I don't know that planet"
    end
    
  end
  
end 
