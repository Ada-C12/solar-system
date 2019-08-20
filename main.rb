require_relative 'lib/planet'
require_relative 'lib/solar_system'

def main
    names = %w(Earth Mars)
    colors = %w(blue-green red-orange)
    mass_kgs = [5.972e24, 6.417e23]
    distances_from_sun_km = [1.496e8, 2.279e8]
    fun_facts = ['Only planet known to support life', 'The planet is named after Mars, the Roman god of war']
    
    solar_system = SolarSystem.new('Sol')
    2.times do |index|
        planet = Planet.new(name: names[index], color: colors[index], mass_kg: mass_kgs[index], distance: distances_from_sun_km[index], fact: fun_facts[index])
        puts planet.summary
        solar_system.add_planet(planet)
    end
    
    list = solar_system.list_planets
    puts list
    
end
main
