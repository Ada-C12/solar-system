class SolarSystem
  attr_reader :star_name, :planets

  def initialize (star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    return "Planets orbiting #{star_name}: \n#{gen_list(@planets).join( )}"
  end

  def gen_list(items_to_list)
    count = 1
    list = []
    items_to_list.each do |item|
      list << "#{count}. #{item.name} \n"
      count += 1
    end
    return list
  end

  def find_planet_by_name(planet_sought)
    # DO .UNIQ on name to get rid of duplicates?
    @planets.each do |test_against|
      if test_against.name.downcase == planet_sought.downcase
        return test_against
      end
    end
  end

  def produce_planet_details
    print "Which planet are you curious about? "
    planet_sought = gets.chomp
    found_planet = find_planet_by_name(planet_sought)
    while found_planet.class == Array
      puts "Sorry, I don't recognize that planet. Please try again."
      print "What planet are you curious about? "
      planet_sought = gets.chomp
      found_planet = find_planet_by_name(planet_sought)
    end
    return found_planet.summary
  end

  def collect_planet_details
    print "What is your planet's name? "
    planet = gets.chomp
    print "What color is #{planet}? "
    color = gets.chomp
    print "What is the mass (in kg) of #{planet}? "
    mass_kg = gets.chomp.to_f
    print "What is #{planet}'s distance from the sun? "
    distance_from_sun_km = gets.chomp.to_f
    print "What is a fun fact about #{planet}? "
    fun_fact = gets.chomp
    added_planet = Planet.new(planet, color, mass_kg, distance_from_sun_km, fun_fact)
    puts "Summary of the latest planet added to our solar system: #{added_planet.summary}"
    return added_planet
  end

end