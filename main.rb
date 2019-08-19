require_relative "planet"

#Wave 2
def main
  jupiter = Planet.new("Jupiter", "Orange", "5.972e23", "1.94e8", "Has a red eye full of storms")
  earth = Planet.new("Earth", "Blue", "34.e39", "14", "Only planet with life")


  puts jupiter.summary
end

main

