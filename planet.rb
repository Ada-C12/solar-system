class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize (name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = check_number_validity(mass_kg, "mass")
    @distance_from_sun_km = check_number_validity(distance_from_sun_km, "distance from sun")
    @fun_fact = fun_fact
  end

  def summary
    return "\nThe glorious planet #{@name} is #{@color}-colored and has a mass of #{@mass_kg} kilograms. It is #{@distance_from_sun_km} kilometers from the sun. And wouldn't you like to know a fun fact about #{@name}? #{@fun_fact}"
  end

  def check_number_validity(num, measure)
    unless num > 0
      print "Positive number for #{measure}, please: "
      num = gets.chomp
    end
    return num
  end
end