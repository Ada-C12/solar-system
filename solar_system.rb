class SolarSystem
  
  attr_reader :star_name, :planets
  
  #constructor
  def initialize (star_name)
    @star_name = star_name
    @planets = []
  end
  
  def add_planet (planet_name)
    @planets << Planet.name
  end
  
  def list_planets
    count = 1
    puts "Planets orbiting #{@star_name}"
    @planets.each do |cur_planet|
      return "#{count}. #{cur_planet}"
      count += 1
    end
    
  end
  
end