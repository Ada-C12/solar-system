require_relative 'planet'

def main

  earth = Planet.new("earth", "green", 0, 10, "it is big")

  puts earth.summary
end

main
