class SolarSystem
  
  attr_reader :star_name, :planets, :name
  
  #constructor
  def initialize (star_name)
    @star_name = star_name
    @planets = []
    @name = name
  end
  
  def add_planet (cur_planet)
    @planets << cur_planet
  end
  
  def list_planets
    count = 0
    puts "Planets orbiting #{@star_name}"
    list = @planets.map do |cur_planet|
      planet = "#{count+=1}. #{cur_planet.name}"
    end
    return list
  end
  
  def find_planet_by_name (name)
    @planets.each do |planet|
      if planet.name.downcase == name.downcase
        return planet
      else
        raise ArgumentError, "Not a known planet"
      end 
    end 
  end
  
end