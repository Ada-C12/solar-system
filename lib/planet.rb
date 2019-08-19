class Planet

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end
  
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  # Removes any extraneous pronouns from the fun fact
  def trim_fun_fact
    if @fun_fact[0..2] == "it "
      @fun_fact.slice!(0, 3)
      return @fun_fact
    elsif @fun_fact[0..2] == @name[0..2]
      @fun_fact.slice!(0, @name.length + 1) # removes planet name + extra space
      return @fun_fact
    end
  end

  # ArgumentError will be raised if kg or km are not greater than zero
  def checks_if_zero?
    @mass_kg > 0 && @distance_from_sun_km > 0
  end

  def summary
    if checks_if_zero?
      return "#{@name} is a #{@color} planet with a mass of #{@mass_kg}kg. It is #{@distance_from_sun_km}km away from the sun. A fun fact about #{@name} is that it #{trim_fun_fact}."
    else
      raise ArgumentError.new("#{@mass_kg == 0 ? 'Mass (kg)' : 'Distance from sun (km)'} must not equal zero")
    end
  end

end

