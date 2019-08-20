class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  # constructor
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    if mass_kg <= 0
      raise ArgumentError.new("The mass_kg must be larger than 0.")
    end
    
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary 
    return "The name of the planet is #{@name}.\nThe color of the planet is #{@color}.\nThe mass in kg of the planet is #{@mass_kg}.\nIts distance from the sun is #{@distance_from_sun_km}.\nA fun fact is #{@fun_fact}.\n"
  end

end
