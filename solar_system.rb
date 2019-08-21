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
    return "\nPlanets orbiting #{star_name}: \n#{gen_list(@planets).join( )}"
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
    test_for_duplicates = @planets.select {|test_against| test_against.name.downcase == planet_sought.downcase}
    if test_for_duplicates.length > 1
      puts "Sorry, there is more than one planet by that name in our Solar System!"
      return nil
    else
      @planets.each do |test_against|
        if test_against.name.downcase == planet_sought.downcase
          return test_against
        end
      end
    end
  end

  def produce_planet_details
    print "\nWhich planet are you curious about? "
    planet_sought = gets.chomp
    found_planet = find_planet_by_name(planet_sought)
    while found_planet.class == Array
      puts "Sorry, I don't recognize that planet. Please try again."
      print "Which planet are you curious about? "
      planet_sought = gets.chomp
      found_planet = find_planet_by_name(planet_sought)
    end
    if found_planet == nil
      return "Please try something else."
    end
    return found_planet.summary
  end

  def collect_planet_details
    print "\nWhat is your planet's name? "
    planet = gets.chomp.capitalize
    print "What color is #{planet}? "
    color = gets.chomp
    print "What is the mass (in kg) of #{planet}? "
    mass_kg = gets.chomp.to_f
    print "What is #{planet}'s distance from the sun? "
    distance_from_sun_km = gets.chomp.to_f
    print "What is a fun fact about #{planet}? "
    fun_fact = gets.chomp
    added_planet = Planet.new(planet, color, mass_kg, distance_from_sun_km, fun_fact)
    puts "\nSummary of the latest planet added to our solar system: #{added_planet.summary}"
    return added_planet
  end
end