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
    planet = @planets.find { |planet| planet.name.downcase == selection.downcase}
    return planet.summary
  end
  
  def create_planet
    puts "What is the planet's name?"
    name = gets.chomp
    
    puts "What color is the planet?"
    color = gets.chomp
    
    puts "What is its mass in kg?"
    mass = gets.chomp.to_f
    
    puts "What is it's distance from the sun in km?"
    distance = gets.chomp.to_f
    
    puts "And last, what's a fun fact about it?"
    fun_fact = gets.chomp
    
    planet = Planet.new(name, color, mass, distance, fun_fact)
    
    @planets << planet
    
  end
  
end 
