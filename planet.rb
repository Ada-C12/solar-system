class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color 
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end
  
  def summary
    return "The planet of #{name} is the color #{color} and weighs #{mass_kg} in kg. You might also find it intereesting that it is #{distance_from_sun_km} km away from Earth. The best part of planet #{name} is that it is #{fun_fact}."
  end
end