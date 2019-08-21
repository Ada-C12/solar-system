
class Planet
  attr_accessor :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  # add a constructor
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end
  
  def summary 
    return "              #{ @name.upcase }\n****************************\n COLOR: #{ @color } \n APPROXIMATE MASS: #{ @mass_kg } KGS \n DISTANCE FROM ITS FAVE STAR: #{ @distance_from_sun_km } KM \n FUN FACT: #{ @fun_fact }"
  end 
  
end
