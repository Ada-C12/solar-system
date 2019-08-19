require_relative "planet"



def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life', 'none (we are not cool enough)')
  mercury = Planet.new('Mercury', 'dark-grey', 3.285e23, 5.791e7, 'Closest planet to sun', 'Sailor Mercury')

  puts earth.summary
  puts mercury.summary

end

main