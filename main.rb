require_relative "planet"

def main
  saturn = Planet.new("Saturn", "yellow-brown", 5.68e26, 1.434e9, "It can be seen with the naked eye")
  
  puts saturn.summary

  mars = Planet.new("Mars", "red", 6.39e23, 2.279e8, "It is home to the tallest mountain in the solar system")
  
  puts mars.summary
end

main


