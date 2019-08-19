
require_relative "planet"
def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Earth is the only planet known to support life')
  neptune = Planet.new("Neptune", "blue", 1.02e26, 4.495e8, 'Neptune is the Coldest Planet in the Solar System')
  mars = Planet.new("Mars", "red", 6.42e23, 227.9e9, 'Pieces of Mars have been found on Earth')
  puts "\n#{earth.summary}"

  puts "\n#{mars.summary}" 
  puts "\n#{neptune.summary}"
end
main