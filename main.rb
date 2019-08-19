require_relative 'planet'

def main
  # This method should create two different instances of Planet and print out some of their attributes.
  earth = Planet.new('Earth', 'blue/green', 2.0, 4.9, 'it is the only planet which supports life.')
  puts earth.summary
end

main
