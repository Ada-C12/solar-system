class Planet
  #define reader and write attributes
  attr_reader :name, :color, :mass_kg, :distance_from_the_sun_km, :fun_fact

  #define initialize
  def initialize(name, color, mass_kg,
    distance_from_the_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_the_sun_km = distance_from_the_sun_km
    @fun_fact = fun_fact
  end 

  def summary
    description = "#{name} is a planet that is #{color}, has a mass of #{mass_kg} kgs, and is #{distance_from_the_sun_km} km away from the sun. Fun fact!: #{fun_fact}"
    return description
  end 
end 