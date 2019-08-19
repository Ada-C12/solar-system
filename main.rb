require_relative 'planet'

earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

mars = Planet.new('Mars', 'orange', 6.39e23, 2.279e8, 'named after Roman god of war')


def main(planet)
  puts planet.summary 
end

main(earth)
main(mars)