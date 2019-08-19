class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    if mass_kg <= 0
      raise ArgumentError.new("Mass in kg must be more than 0.")
    elsif distance_from_sun_km <= 0
      raise ArgumentError.new("Distance from sun in km must be more than 0.")
    end
    
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end
  
  def summary
    summary = "Planet: #{@name}, Color: #{@color}, Mass: #{@mass_kg} kg, Distance from sun: #{distance_from_sun_km} km, Fun fact: #{fun_fact}"
    return summary
  end
end
