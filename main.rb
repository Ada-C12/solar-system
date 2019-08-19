require_relative "planet"

def main
  
  mars = Planet.new('Mars', 'red', 6.39e23, 2.279e8, 'Named after the Roman god of war')
  venus = Planet.new('Venus', 'yellowish', 4.867e24, 1.082e8, 'Second brightest natural object in the sky')
  puts "\nPlanet 1: \nName: #{mars.name} \nColor: #{mars.color} \nMass (kg): #{mars.mass_kg} \nDistance from the sun (km): #{mars.distance_from_sun_km} \nFun Fact: #{mars.fun_fact}."
  puts "\nPlanet 2: \nName: #{venus.name} \nColor: #{venus.color} \nMass (kg): #{venus.mass_kg} \nDistance from the sun (km): #{venus.distance_from_sun_km} \nFun Fact: #{venus.fun_fact}."
  
end

main