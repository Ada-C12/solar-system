class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    list_num = 1
    list_string = "\nPlanets orbiting #{star_name}:\n" 
    @planets.each do |planet|
      list_string << " #{list_num}.#{planet.name}\n"
      list_num += 1
    end
    return list_string
  end

  def user_add_planet
    puts "Put planet name."
    name = gets.chomp.downcase
    puts "What color is the planet?"
    color = gets.chomp.downcase
    puts "What is the mass kg?"
    mass_kg = gets.chomp.to_i
      until mass_kg > 0
        puts "That's not a vaild number! Input another."
        mass_kg = gets.chomp.to_i
      end
    puts "What is the planet's distance from the sun in km?"
    distance_from_sun_km = gets.chomp.to_f
      until distance_from_sun_km > 0
      puts "That's not a vaild number! Input another."
      distance_from_sun_km = gets.chomp.to_f
      end
    puts "What is a fun fact about your planet?"
    fun_fact = gets.chomp
  
    planet_name = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
    add_planet(planet_name)
  end

  def find_planet_by_name(check_planet)
    @planets.each do |current_planet|
      if current_planet.name.downcase == check_planet.downcase
        return current_planet
      end
    end
    return nil 
  end
  

end
    
