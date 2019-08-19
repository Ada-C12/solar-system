require_relative 'planet'




def main
  
  earth = Planet.new("Earth", "Blue-Green", 5.972e24, 1.496e8, "Only planet known to support life.")
  mars = Planet.new("Mars", "Red", 0.64171, 227.9, "Atmosphere is composed primarily of carbon dioxide.")
  
  puts earth.name
  puts earth.color
  puts mars.name
  puts mars.color
  
  puts earth.summary
  puts mars.summary
  
  
  
  
  
  
  
  
  
  
  
  
  
end
main