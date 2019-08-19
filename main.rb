require_relative 'planet'
require_relative 'solar_system'

def main
  mars = Planet.new("Mars", "red", 6.39e23, 227940000, "takes its name from the Roman god of war")
  jupiter = Planet.new("Jupiter", "brown", 1.898e27, 778547200, "is the fastest spinning planet in the solar system")
  
  puts mars.summary
  puts jupiter.summary
  
end

main
