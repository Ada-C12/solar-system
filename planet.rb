# creates a class
class Planet
  
  # reader attributes 
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  # constructor
  # here the initial attributes are 
  def initialize(name:, color:, mass_kg:, distance_from_sun_km:, fun_fact:)
    @name = name.upcase
    @color = color.downcase
    @mass_kg = mass_kg.to_i
    @distance_from_sun_km = distance_from_sun_km.to_i
    @fun_fact = fun_fact
  end    
  
  # writes summary
  def summary
    return "Let's learn about #{@name.capitalize}. It is #{@color}, it has a mass of #{@mass_kg} kg, and it orbits #{@distance_from_sun_km} kilometers from the sun. Fun fact: #{@fun_fact}. \n"
  end
  
end
