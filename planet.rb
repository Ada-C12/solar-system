# Each instance of this class will keep track of information about a single planet.
class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact

    until @mass_kg > 0 
      puts "Mass kilograms must be greater than 0! Please insert a new number:"
      @mass_kg = gets.chomp.to_i
    end

    until @distance_from_sun_km > 0
      puts "Distance from the sun must be greater than 0! Please insert a new number:"
      @distance_from_sun_km = gets.chomp.to_i
    end
  end

  def summary
    return "#{@name}: It is the color #{@color}, it has a mass kg of #{@mass_kg}, it is #{@distance_from_sun_km} km from the sun, and #{@fun_fact}!"
  end
end
