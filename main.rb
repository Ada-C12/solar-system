require_relative 'solar_system'
require_relative 'planet'
require_relative 'controller'

def main
  solar_system = SolarSystem.new('Sol')
  
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mercury = Planet.new('Mercury', 'yellowish', 'big', 'far', 'things break when it goes retrograde')
  solar_system.add_planet(earth)
  solar_system.add_planet(mercury)

  controller = Controller.new(solar_system)
  controller.control_loop
end

main
