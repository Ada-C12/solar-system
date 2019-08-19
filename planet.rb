class Planet
  
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @fun_fact = fun_fact
    
    if (mass_kg.class != Integer && mass_kg.class != Float) || mass_kg <= 0
      raise ArgumentError.new("The planet mass is invalid! Please start over, making sure the mass is a number greater than 0.")
    else
      @mass_kg = mass_kg
    end      
    
    if (distance_from_sun_km.class != Integer && distance_from_sun_km.class != Float) || distance_from_sun_km <= 0
      raise ArgumentError.new("The distance from the sun is invalid! Please start over, making sure the distance from the sun is a number greater than 0.")
    else
      @distance_from_sun_km = distance_from_sun_km
    end     
    
  end
  
  def summary
    return "\nPlanet Data: \nName: #{@name} \nColor: #{@color} \nMass (kg): #{@mass_kg} \nDistance from the sun (km): #{@distance_from_sun_km} \nFun Fact: #{@fun_fact}."
  end
  
end