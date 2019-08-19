require_relative 'planet'

def main
  # This method should create two different instances of Planet and print out some of their attributes.
  earth = Planet.new('Earth', 'blue/green', 5.972e24, 1.496e8, 'it is the only planet which supports life.')
  saturn = Planet.new('Saturn', 'bright blue', 1.4e9, 5.6834e26, "has shown that Saturn\'s south pole has a warm polar vortex")
  puts earth.summary
  puts saturn.summary
end

main
