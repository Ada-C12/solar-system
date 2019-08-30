class SolarSystem
  
  attr_reader :star_name, :planets
  
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
  
  def add_planet(planet)
    @planets.push(planet)
    
  end
  
  def list_planets
    intro =  "Planets Orbiting #{@star_name}: \n"
    count = 1
    @planets.each do |planet|
      intro += "#{count}. #{planet.name}\n"
      count += 1
    end
    
    return intro
  end
  
  def find_planet_by_name(planet)
    @planets.each do |planet_name|
      if planet_name.name == planet
        return planet_name.summary
      end
    end
    return "No Information Found"
  end
  
  def check_for_planet(planet)
    @planets.each do |planet_name|
      if planet_name.name == planet
        return true
      end
    end
    return false
  end
end

