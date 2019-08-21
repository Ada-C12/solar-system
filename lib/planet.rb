class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    if mass_kg < 0
      raise ArgumentError, "ERROR. Mass must be greater than 0!"
    end
    @mass_kg = mass_kg
    if distance_from_sun_km < 0
      raise ArgumentError, "ERROR. Distance must be greater than 0!"
    end
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "Planet #{name} is #{color}, weighs #{mass_kg} kg, and is about #{distance_from_sun_km} km from the sun. Fun fact: #{fun_fact}"
  end
end
