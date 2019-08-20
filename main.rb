require_relative 'planet'

def main
  earth = Planet.new("Earth","mostly blue with white clouds", 5.97e24, 1.496e8, "It has bees")
  mars = Planet.new("Mars", "rusty butterscotch", 10e23, 227883110.4, "The tallest mountain in the solar system (Olympus Mons) is on Mars, and is almost three times taller than Mt. Everest")
  puts earth.summary
  puts mars.summary
end

main