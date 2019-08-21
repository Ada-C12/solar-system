class SolarSystem
  attr_reader :star_name, :planets, :instance_of_planet_class
  
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end 
  
  # create a method add_planet, takes an instance of Planet as a parameter and add it
  # to the list of planets
  def add_planet(planet)
    @planets.push(planet)
  end 
  
  # create a method list_planets, returns a string containing the planets in the system
  def list_planets
    output = "The planets orbiting #{star_name} are: \n"
    # loop thru the planets list i times
    @planets.length.times do |i| 
      # increment counter and pull out each planet's name
      output += "#{i+1}. #{@planets[i].name}\n"
    end 
    return output 
  end 
  
  # create a method that takes the name of a planet as a string 
  # and returns the corresponding instance of Planet
  # look-up should be case insensitive 
  def find_planet_by_name(check_planet)
    @planets.each do |current_planet|
      if current_planet.name.downcase == check_planet.downcase
        return current_planet
      end 
    end
    return nil
  end
end



