class Planet
  
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    mass_kg > 0 ? @mass_kg = mass_kg : (raise "Error - Invalid Mass Value")
    distance_from_sun_km > 0 ? @distance_from_sun_km = distance_from_sun_km : (raise "Error - Invalid Distance Value")
    @fun_fact = fun_fact
  end
  
  def summary
    "Planet: #{@name}\nColor: #{@color}\nMass: #{@mass_kg} kg\nDistance from Sun: #{@distance_from_sun_km} km\nFun Fact: #{@fun_fact}\n\n"
  end
  
end
