require_relative 'planet'

def main

  earth = Planet.new("earth", "green", 55.9, 10, "earth is big")

  return earth.summary

end

puts main
