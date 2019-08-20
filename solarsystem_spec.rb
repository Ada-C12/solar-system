# planet_spec.rb

require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../solar-system/planet.rb'
require_relative '../solar-system/solar_system'

Minitest::Reporters.use!

describe "solarsystem" do
  
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'reddish', 6.39e23, 15009.6, 'mars bars')
  
  solar_system = SolarSystem.new('Sol')
  
  it "will successfully add the planet" do 
    solar_system.add_planet(earth)
    expect(solar_system.planets[0].name).must_equal "Earth"
  end
  
  it "will raise an argument error if an invalid planet is inputted in the find planet method" do
    expect {
      solar_system.find_planet_by_name('egg')
    }.must_raise ArgumentError
    
    expect {
      solar_system.distance_between('egg', 'tomato')
    }.must_raise ArgumentError
    
  end
  
  
  
end
