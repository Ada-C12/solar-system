require_relative 'planet'

def main
  saturn = Planet.new('Saturn', 'yellow', 565, 653366, 'it has cool rings')
  puts "The planet #{saturn.name} is #{saturn.color} and check this out: #{saturn.fun_fact} "
  
  pluto = Planet.new('Pluto', 'blue', 1000, 9584748, 'it is a controversial planet pick')
  puts "The planet #{pluto.name} is #{pluto.color} and check this out: #{pluto.fun_fact} "
  
end 

main