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
    planet_list = "Planets orbiting #{star_name}"
    
    @planets.each_with_index do |planet, index|
      planet_list << "\n#{index + 1}. #{planet.name}"
    end
    return planet_list
  end  
  
  def find_planet_by_name(planet_name)
    list = @planets.select do |planet|
      planet.name.capitalize == planet_name.capitalize
    end
    
    if list.length == 0
      return "This solar system does not have a planet named #{planet_name.capitalize}."
    elsif list.length == 1
      return list[0].summary
    else
      message = "There are mutliple planets with that name:"
      
      list.each do |planet|
        message << "\n#{planet.summary}"
      end
      return message
    end
  end
  
  def distance_between(first_planet, second_planet)
    first_position = first_planet.distance_from_sun_km
    second_position = second_planet.distance_from_sun_km
    
    if first_position > second_position
      return first_position - second_position
    else
      return second_position - first_position
    end
  end
  
end
