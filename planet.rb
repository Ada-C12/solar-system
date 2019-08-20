class Planet
  
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  def initialize (name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end
  
  def summary
    return "\n#{@name} is a planet that is #{@color} in color, weighs #{@mass_kg} kg, and sits #{@distance_from_sun_km} km from the sun. Interesting fact about #{@name}: #{@fun_fact}."
  end
  
  def valid_weight
    if @mass_kg <= 0
      @mass_kg = 0
    end
  end
  
  def valid_distance
    if @distance_from_sun_km <= 0
      @distance_from_sun_km = 0
    end
  end
end