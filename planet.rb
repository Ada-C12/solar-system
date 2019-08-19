class Planet
  # make instance variables readable from outside class
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  # add a constructor
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    if mass_kg <= 0
      raise ArgumentError.new('Mass must be greater than 0.')
    end
    @distance_from_sun_km = distance_from_sun_km 
    if distance_from_sun_km <= 0
      raise ArgumentError.new('Distance from sun must be greater than 0.')
    end
    @fun_fact = fun_fact
  end
  
  # create instance method to output a summary
  def summary
    return "The planet #{@name} is #{@color} in color and weighs #{@mass_kg} kilograms."
  end 
  
end
