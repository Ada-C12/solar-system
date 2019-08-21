require_relative 'solar-system'

class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = massChecker(mass_kg)
    @distance_from_sun_km = distance_from_sun_km.to_f
    @fun_fact = fun_fact
  end

  #
  def massChecker(mass_kg)
    if mass_kg > 0
      return mass_kg
    else
      raise ArgumentError
    end
  end

  def distanceChecker(distance_from_sun_km)
    if distance_from_sun_km > 0
      return distance_from_sun_km
    else
      raise ArgumentError
    end
  end

  def summary
    return "Your Planet's name is #{@name}! It is a #{@color} planet, weighs #{@mass_kg} kg, and is #{@distance_from_sun_km} km from the sun. Fun fact about #{@name}: #{@fun_fact}!"
  end
end
