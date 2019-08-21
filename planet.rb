# Wave 1
class Planet
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance = distance_from_sun_km
    @fun_fact = fun_fact
  end 

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  def summary
    return "Planet #{@name} is #{@color} and #{@fun_fact}."
  end 
end 