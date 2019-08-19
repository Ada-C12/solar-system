require_relative 'planet'

def main
  saturn = Planet.new('Saturn', 'yellow', 565, 653366, 'it has cool rings')
  puts saturn.summary 
  
  pluto = Planet.new('Pluto', 'blue', 1000, 9584748, 'it is a controversial planet pick')
  puts pluto.summary 
end 

main