require_relative "planet"

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e16, 'Only planet known to support life')
  borg = Planet.new('Cyborg', 'neon green', 10.993e24,-2.496e90, 'Humans have not yet discovered this planet' )
  
  puts earth.summary
  puts borg.summary
  
end

main