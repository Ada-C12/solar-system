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
    string = ""
    @planets.each do |cur_planet|
      planet = "#{count+=1}. #{cur_planet.name}\n"
      string += planet
    end
    return "Planets orbiting #{@star_name}\n" + string
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