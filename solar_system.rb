class SolarSystem

  attr_reader :planets, :star_name

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end 

  def add_planet(planet)
    @planets.push(planet)
    return @planets
  end 

  def list_planets
    i = 1
    opening = "Planets orbiting #{star_name}\n"
    @planets.each do |planet|
      space_ball = "#{i}. #{planet.name}\n"
      i += 1
      opening.concat(space_ball)
    end 
    return opening
  end 

  def find_planet_by_name(search_planet)
    #change search planet to match planet name in class (capitalize)
    search_planet = search_planet.capitalize
    #if the search planet matches the name of class planet
    @planets.each do |planet|
      if planet.name == search_planet
        return planet
      end 
    end 
  end 
end 
