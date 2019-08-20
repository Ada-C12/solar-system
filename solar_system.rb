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
  
  # def find_planet_by_name(selection)
  #   learn_more = @planets.select { |planet| planet.name.downcase == selection.downcase }
  #   if learn_more.count > 1
  #     puts "There seems to be more than one planet with that name, here's both:"
  #     learn_more.each do |planet|
  #       planet.summary
  #     end
  #   elsif learn_more.count == 1
  #     return object 
  #   else
  #     puts "I'm sorry, I don't know that planet"
  #   end
  
  # end
  
end 
