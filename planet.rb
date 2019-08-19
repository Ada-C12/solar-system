# Wave 1
# Create a class called Planet.
class Planet
  # EAch parameter should be saved in an instance variable with the same name
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  # Add a constructor to your Planet class. Your constructor should take at least these 5 parameters:
  #   name
  #   color
  #   mass_kg
  #   distance_from_sun_km
  #   fun_fact
  def initialize (name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end
  
  def summary
    
  end
  
end
