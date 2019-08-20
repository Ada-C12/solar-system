SOLAR_SYSTEM = %w[mercury venus earth mars jupiter saturn uranus neptune]

class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color 
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact    
    check_constructor
  end
  
  def check_constructor
    raise ArgumentError.new 'Invalid planet name!' if @name.class != String || !SOLAR_SYSTEM.include?(@name.downcase) 
    
    raise ArgumentError.new "Invalid planet color!" if @color.class != String 
    
    raise ArgumentError.new "Invalid planet mass!" if (@mass_kg.class != Integer && @mass_kg.class != Float) || @mass_kg <= 0
    
    raise ArgumentError.new "Invalid distance!" if (@distance_from_sun_km.class != Integer && @distance_from_sun_km.class != Float) || @distance_from_sun_km <= 0
    
    raise ArgumentError.new "Invalid planet fun fact!" if @fun_fact.class != String
  end
  
  def summary
    return "Summary of #{@name}: \n - The planet color is #{@color}. \n - The planet mass is #{@mass_kg}kg. \n - The distance to sun is #{@distance_from_sun_km}km. \n - A fun fact is that it is the #{@fun_fact}!"
  end
  
end
