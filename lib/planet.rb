class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    raise ArgumentError if mass_kg <= 0
    raise ArgumentError if distance_from_sun_km <= 0

    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact

  end

  def summary
    return "#{name} is #{color}, weighs #{mass_kg}kg, and is #{distance_from_sun_km}km from the sun. #{fun_fact}."
  end
  
end
