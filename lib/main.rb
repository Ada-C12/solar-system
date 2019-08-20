require_relative 'planet'

def main 
  mercury = Planet.new('Mercury', 'gray', 3.285e23, 5.791e7, 'it does not have any moons or rings')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'it is the only planet known to support life')
  puts mercury.summary
  puts earth.summary
end 

main