require_relative 'planet'

def main
  
  venus = Planet.new('Venus', 'reddish-brown', 4.867e24, 1.082e8, 'This planet is named after the Roman goddess Venus')
  mars = Planet.new('Mars', 'red', 6.39e23, 2.279e8, 'The Mars rover, Opportunity, ended on February, 13, 2019')
  
  puts venus.summary
  puts mars.summary
end

main