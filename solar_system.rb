class SolarSystem
  
  attr_reader :star_name, :planets, :name
  
  #constructor
  def initialize (star_name)
    @star_name = star_name
    @planets = []
    @name = name
  end
  
  def add_planet (cur_planet)
    @planets << cur_planet
  end
  
  def list_planets
    count = 0
    string = ""
    @planets.each do |cur_planet|
      planet = "#{count+=1}. #{cur_planet.name}\n"
      string += planet
    end
    return "Planets orbiting #{@star_name}\n" + string
  end
  
  def find_planet_by_name (name)
    @planets.each do |planet|
      if planet.name.downcase == name.downcase
        return planet
      end 
    end 
  end
  
  def new_planet
    print "Planet's name: "
    new_name = gets.chomp
    print "Planet's color: "
    new_color = gets.chomp
    print "Planet's mass in kg: "
    new_mass = gets.chomp.to_i
    print "Planet's distance from the sun in km: "
    new_distance = gets.chomp.to_i
    print "Fun fact about planet: "
    new_fun_fact = gets.chomp
    puts
    
    new_name = Planet.new("#{new_name}", "#{new_color}", new_mass, new_distance, "#{new_fun_fact}")
    
    add_planet(new_name)
  end
  
  def planet_details 
    print "Enter the name of the planet you wish to learn about: "
    name = gets.chomp.to_s.downcase
    puts
    learn_about_planet = find_planet_by_name(name)
    return learn_about_planet.summary
  end 
end