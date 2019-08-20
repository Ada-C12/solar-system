class SolarSystem
  
  attr_reader :starname, :planets
  #constructor
  def initialize (star_name)
    @star_name = star_name
    @planets = []
  end
end