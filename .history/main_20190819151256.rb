require_relative 'planet'

def main
  
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  venus = Planet.new('Venus', 'yellow and white', 177.7, 67.24, 'It is known as the morning star')
  
  
  puts earth.summary
  puts venus.summary
  
end

main