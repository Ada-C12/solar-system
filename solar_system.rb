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
    planet_name = search_planet.downcase
    if @planets.name.include?(planet_name) == true
      return @planet.summary
    end 
  end 

end 