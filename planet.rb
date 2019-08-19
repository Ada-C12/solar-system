

class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name:, color:, mass_kg:, distance_from_sun_km:, fun_fact:)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def color=(new_color)
    @color = new_color
  end

  def summary
    puts "The planet #{@name} is #{@color} in color and is #{mass_kg} kgs.
     It is #{distance_from_sun_km} kms from the Sun. Fun fact: #{fun_fact}"
  end
end
