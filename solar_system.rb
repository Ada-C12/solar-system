class SolarSystem
  attr_reader :star_name, :planets
  
  def initialize (star_name)
    @star_name = star_name 
    @planets = []
  end
  
  add_planet (Planet)
  planets << Planet 
  
  list_planets 
  output_string = "Planets orbiting #{star_name}:" + 
  planets.each do |planet|
    "#{index(planet) + 1}. #{planet\n}"
  end 
  return output_string 
end

