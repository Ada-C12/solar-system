class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    if mass_kg <= 0
      raise ArgumentError, 'Mass must be a value greater than 0.'
    elsif distance_from_sun_km <= 0
      raise ArgumentError, 'Distance must be a value greater than 0.'
    end
    
    @name = name.capitalize
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end
  
  def summary
    return "#{@name} is a #{@color} planet. It has a mass of #{@mass_kg}kg. It is #{@distance_from_sun_km}km from the sun. #{@fun_fact}\n"
  end
end
