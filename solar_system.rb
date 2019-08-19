# Ga-Young Jin, Cohort 12
# Monday, August 19th, 2019
# Week 3, Solar System Project

class SolarSystem
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end 
  
  attr_reader :star_name, :planets
  
  def add_planet(planet)
    @planets << planet
  end
  
  def list_planets
    planet_count = 1
    list = "Planets orbiting #{star_name} \n"
    @planets.each do |planet|
      list = list + "#{planet_count}. #{planet.name} \n"
      planet_count += 1
    end
    return list
  end
  
  def find_planet_by_name(search_planet_name)
    @planets.each do |planet|
      if search_planet_name.upcase == planet.name.upcase
        return planet
      end
    end
    return "There is no planet by that name." 
  end
end


