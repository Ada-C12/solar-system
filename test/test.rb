require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/planet'
require_relative '../lib/solar_system'

Minitest::Reporters.use!

describe "Planet" do
  it "must provide a valid planet name" do 
    expect{Planet.new(2, 'blue-green', 11, 10, 'good')}.must_raise ArgumentError
  end
  
  it "must be a string of planet color" do 
    expect{Planet.new('earth', 0, 11, 10, 'good')}.must_raise ArgumentError
  end
  
  it "must be a valid planet mass" do 
    expect{Planet.new('earth', 'blue-green', -5.972e24, 1.496e8, 'only planet known to support life')}.must_raise ArgumentError
  end
  
  it "must be a valid number of distance" do 
    expect{Planet.new('earth', 'blue-green', 5.972e24, -1.496e8, 'only planet known to support life')}.must_raise ArgumentError
  end
  
  it "must be a string of planet fun fact" do 
    expect{Planet.new('earth', 'blue-green', 5.972e24, 1.496e8, 222)}.must_raise ArgumentError
  end
  
  it "won't raise an error" do 
    expect{Planet.new('earth', 'blue-green', 5.972e24, 1.496e8, 'only planet known to support life')}.must_be_silent
  end
  
  it "must return a string of summary" do 
    planet = Planet.new('earth', 'blue-green', 5.972e24, 1.496e8, 'only planet known to support life')
    summary = planet.summary
    expect(summary).must_equal "Summary of earth: \n - The planet color is blue-green. \n - The planet mass is 5.972e+24kg. \n - The distance to sun is 149600000.0km. \n - A fun fact is that it is the only planet known to support life!"
  end
  
end

describe "SolarSystem" do
  before do 
    @solar_system = SolarSystem.new('Sol')
    @earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    
    @solar_system.add_planet(@earth)
    
    @mars = Planet.new('Mars', 'brownish-red', 6.4171e23, 2.2794e8, 'The second smallest planet in the solar system behind Mercury')
    
    @solar_system.add_planet(@mars)
    
    
  end
  
  describe "add planet" do
    it "must add valid planet to planets array" do
      expect{@solar_system.add_planet('planet')}.must_raise ArgumentError
    end
    
  end
end
