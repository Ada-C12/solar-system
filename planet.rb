class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  # add a constructor
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end
  
  def summary 
    return "#{ @name } has a #{ @color } color, weighs approximately #{ @mass_kg }, and is #{ @distance_from_sun_km } far from the Sun. A fun fact about #{ @name } is: #{ @fun_fact }"
  end 
  
end
