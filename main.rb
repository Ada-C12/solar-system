require_relative 'planet'

def main
  # instantiate earth
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  # call method summary on earth and print result
  puts earth.summary
end

main
