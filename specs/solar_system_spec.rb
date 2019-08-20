require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/solar_system.rb'
require_relative '../lib/planet.rb'

describe "solar_system" do
  it "Creates solar system" do
    earth = Planet.new("Earth", "green", 2, 2, "The Earth is round")
    venus = Planet.new("Venus", "red", 2, 2, "The Venus is round")
    solar = SolarSystem.new("blob")
    
    expect(solar).must_be_instance_of SolarSystem
  end
  
  it "Lists planets in solar system" do
    earth = Planet.new("Earth", "green", 2, 2, "The Earth is round")
    venus = Planet.new("Venus", "red", 2, 2, "The Venus is round")
    solar = SolarSystem.new("blob")
    
    solar.add_planet(earth)
    solar.add_planet(venus)
    
    expect(solar.list_planets).must_equal "\nPlanets orbiting blob\n1. Earth\n2. Venus"
  end
  
  it "Finds planet by name returns Planet" do
    earth = Planet.new("Earth", "green", 2, 2, "The Earth is round")
    venus = Planet.new("Venus", "red", 2, 2, "The Venus is round")
    solar = SolarSystem.new("blob")
    
    solar.add_planet(earth)
    solar.add_planet(venus)
    
    expect(solar.find_planet_by_name("Earth")).must_be_instance_of Planet
  end
  
  it "Distance between planets is always positive" do
    earth = Planet.new("Earth", "green", 2, 2, "The Earth is round")
    venus = Planet.new("Venus", "red", 2, 5, "The Venus is round")
    solar = SolarSystem.new("blob")
    
    solar.add_planet(earth)
    solar.add_planet(venus)
    
    expect(solar.distance_between("Earth","Venus")).must_equal 3
  end
  
end