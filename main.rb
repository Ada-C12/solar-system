require_relative 'planet'

def main
  # nothing
end

venus = Planet.new("Venus", "burnt sienna", 4.867e24, 108208930, "it is the second brightest object in the night sky")
earth = Planet.new("Earth", "blue-green", 5.972e24, 149600000, "I live on it")

p earth.summary
p venus.summary
