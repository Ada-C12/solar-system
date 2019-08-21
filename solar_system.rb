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

  def produce_planet_details(planet_sought)
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
end