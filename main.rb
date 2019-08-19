require_relative 'lib/planet'

def main
    names = %w(Earth Mars)
    colors = %w(blue-green red-orange)
    mass_kgs = [5.972e24, 6.417e23]
    distances_from_sun_km = [1.496e8, 2.279e8]
    fun_facts = ['Only planet known to support life', 'The planet is named after Mars, the Roman god of war']
    2.times do |index|
        planet = Planet.new(names[index], colors[index], mass_kgs[index], distances_from_sun_km[index], fun_facts[index])
        puts planet.summary
    end
end
main