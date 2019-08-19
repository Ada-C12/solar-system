require_relative "planet"

# Load Planet into pry:
# $ pry -r ./planet.rb
earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life', "none")

puts earth.name
# => Earth
puts earth.fun_fact
# => Only planet known to support life
puts earth.sailor_moon_guardian

earth.color = 'pink'
# => NoMethodError: undefined method `color=' for #<Planet:0x00007fcfba04c130>
# => Did you mean?  color