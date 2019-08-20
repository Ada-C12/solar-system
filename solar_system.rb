class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    list_num = 1
    list_string = "Planets orbiting #{star_name}:\n" 
    @planets.each do |planet|
      list_string << " #{list_num}.#{planet.name}\n"
      list_num += 1
    end
    return list_string
  end

  def find_planet_by_name(check_planet)
    @planets.each do |current_planet|
      if current_planet.name.downcase == check_planet.downcase
        return current_planet
      else return nil
      end
    end 
  end

end
    
