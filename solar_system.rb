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
    return "Planets orbiting #{star_name}
    #{gen_list(@planets).join( )}" # Revisit this when multiple planets to add new lines in between if needed
  end

  def gen_list(items_to_list)
    count = 1
    list = []
    items_to_list.each do |item|
      list << "#{count}. #{item.name}"
    count += 1
    end
    return list
  end

  def find_planet_by_name(questioned)
    planets.map! {|cur_planet| cur_planet.name}
    return planets
  end

end




