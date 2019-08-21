# Create class Planet and initialize with 5 parameters as keyword arguments.
class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name:, color:, mass_kg:, distance_from_sun_km:, fun_fact:)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
    # Raise errors if numbers input are less than or equal to zero
    if mass_kg <= 0
      raise ArgumentError.new "Invalid number for mass."
    end
    if distance_from_sun_km <= 0
      raise ArgumentError.new "Invalid distance from star."
    end
  end

  # Format attributes of instances od planets into a neat string.
  def summary
    puts "The planet #{@name} is #{@color} in color and is #{"%1e" % @mass_kg} kgs.
     It is #{"%1e" % @distance_from_sun_km} kms from the Sun. Fun fact: #{@fun_fact}"
  end
end
