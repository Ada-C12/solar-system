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
    return "Planets in #{@star_name}""\n" + list
    
  end 
  
  def find_planet_by_name(selection)
    @planets.find { |planet| planet.name.downcase == selection.downcase}
  end
  
end 
