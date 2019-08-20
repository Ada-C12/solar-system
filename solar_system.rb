class SolarSystem
  
  attr_reader :star_name, :planets
  
  #constructor
  def initialize (star_name)
    @star_name = star_name
    @planets = []
  end
  
  def add_planet (cur_planet)
    @planets << cur_planet.name
  end
  
  def list_planets
    count = 0
    puts "Planets orbiting #{@star_name}"
    list = @planets.map do |cur_planet|
      planet = "#{count+=1}. #{cur_planet}"
    end
    return list
  end
  
end