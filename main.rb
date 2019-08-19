require_relative "planet"

def main
  # Create two different instances of planet and print out some of their attributes
  zorg = Planet.new("Zorg", "purple", 4.12e24, 57.9e6, "Planet has a roller coaster.")
  puts zorg.summary
  
  tron = Planet.new("Tron", "blue", 3.56e24, 227.9e6, "Planet uses nuclear energy.")
  puts tron.summary
  
end

main
