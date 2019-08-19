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
    return "Your Planet's name is #{@name}! It is a #{@color} planet, weighs #{@mass_kg} kg, and is #{@distance_from_sun_km} km from the sun. Fun fact about #{@name}: #{@fun_fact}!"
  end
end
