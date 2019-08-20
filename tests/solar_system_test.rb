require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/solar_system'
require_relative '../lib/planet'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "SolarSystem class" do
    describe "Constructor" do
        it "Takes in a string as argument" do
            star_name = "Sol"
            solar_system = SolarSystem.new(star_name)
            
            expect (solar_system.star_name).must_equal star_name
        end
        
        it "Error checks for invalid input" do
            planet0 = 1
            planet1 = %w(one two three)
            
            expect {SolarSystem.new(planet0)}.must_raise ArgumentError
            expect {SolarSystem.new(planet1)}.must_raise ArgumentError
        end
    end
    
    describe "Reading methods" do
        it "Does not allow reassigning instance variables" do 
            star_name = "Sol"
            solar_system = SolarSystem.new(star_name)
            
            expect {solar_system.star_name = 'Earth'}.must_raise NoMethodError 
            expect {solar_system.planets = ["Sun", "Mars"]}.must_raise NoMethodError 
        end
        
        it "@planets is an array" do
            star_name = "Sol"
            solar_system = SolarSystem.new(star_name)
            
            expect (solar_system.planets).must_be_instance_of Array
        end
    end
    
    describe "add_planet method" do
        it "Add a planet to a solar system" do
            mars = Planet.new(name: "Mars", color: "red-orange", mass_kg: 6.417e23, distance: 2.279e8, fact: 'The planet is named after Mars, the Roman god of war')
            star_name = "Sol"
            solar_system = SolarSystem.new(star_name)      
            solar_system.add_planet(mars)
            
            expect (solar_system.planets.include? mars).must_equal true
        end
        
        it "Error checks input" do
            mars = "Mars"
            star_name = "Sol"
            solar_system = SolarSystem.new(star_name)
            
            expect {solar_system.add_planet(mars)}.must_raise ArgumentError
        end
    end
    
    describe "list_planets method" do
        it "Returns a string" do
            mars = Planet.new(name: "Mars", color: "red-orange", mass_kg: 6.417e23, distance: 2.279e8, fact: 'The planet is named after Mars, the Roman god of war')
            earth = Planet.new(name: 'Earth', color: 'blue-green', mass_kg: 5.972e24, distance: 1.496e8, fact: 'Only planet known to support life')
            
            star_name = "Sol"
            solar_system = SolarSystem.new(star_name)
            solar_system.add_planet(earth)
            solar_system.add_planet(mars)
            
            expect (solar_system.list_planets).must_be_instance_of String
        end
        
        it "Prints out formatted list of planets" do
            mars = Planet.new(name: "Mars", color: "red-orange", mass_kg: 6.417e23, distance: 2.279e8, fact: 'The planet is named after Mars, the Roman god of war')
            earth = Planet.new(name: 'Earth', color: 'blue-green', mass_kg: 5.972e24, distance: 1.496e8, fact: 'Only planet known to support life')
            
            star_name = "Sol"
            solar_system = SolarSystem.new(star_name)
            solar_system.add_planet(earth)
            solar_system.add_planet(mars)
            
            formatted_list_of_planets = solar_system.list_planets
            expected_result = "Planets orbiting Sol\n1. Earth\n2. Mars\n"
            expect (formatted_list_of_planets).must_equal expected_result
        end
    end
    
    describe "find_planet_by_name" do
        it "Takes in a string as input" do
            mars = Planet.new(name: "Mars", color: "red-orange", mass_kg: 6.417e23, distance: 2.279e8, fact: 'The planet is named after Mars, the Roman god of war')
            earth = Planet.new(name: 'Earth', color: 'blue-green', mass_kg: 5.972e24, distance: 1.496e8, fact: 'Only planet known to support life')
            
            star_name = "Sol"
            solar_system = SolarSystem.new(star_name)
            solar_system.add_planet(earth)
            solar_system.add_planet(mars)
            
            expect (solar_system.find_planet_by_name(earth.name)).must_equal earth
        end
        
        it "Error checks input" do
            mars = Planet.new(name: "Mars", color: "red-orange", mass_kg: 6.417e23, distance: 2.279e8, fact: 'The planet is named after Mars, the Roman god of war')
            earth = Planet.new(name: 'Earth', color: 'blue-green', mass_kg: 5.972e24, distance: 1.496e8, fact: 'Only planet known to support life')
            
            star_name = "Sol"
            solar_system = SolarSystem.new(star_name)
            solar_system.add_planet(earth)
            solar_system.add_planet(mars)
            
            planet0 = 1
            planet1 = ["one", "two"]
            expect {solar_system.find_planet_by_name(planet0)}.must_raise ArgumentError
            expect {solar_system.find_planet_by_name(planet1)}.must_raise ArgumentError
        end
        
        it "Returns nil if planet isn't in the SolarSystem" do
            mars = Planet.new(name: "Mars", color: "red-orange", mass_kg: 6.417e23, distance: 2.279e8, fact: 'The planet is named after Mars, the Roman god of war')
            earth = Planet.new(name: 'Earth', color: 'blue-green', mass_kg: 5.972e24, distance: 1.496e8, fact: 'Only planet known to support life')
            
            star_name = "Sol"
            solar_system = SolarSystem.new(star_name)
            solar_system.add_planet(earth)
            solar_system.add_planet(mars)
            
            planet = "VEnus"
            assert_nil(solar_system.find_planet_by_name(planet))
        end
        
        it "Returns the first planet found by name" do
            mars = Planet.new(name: "Mars", color: "red-orange", mass_kg: 6.417e23, distance: 2.279e8, fact: 'The planet is named after Mars, the Roman god of war')
            earth = Planet.new(name: 'Earth', color: 'blue-green', mass_kg: 5.972e24, distance: 1.496e8, fact: 'Only planet known to support life')
            another_earth = Planet.new(name: 'Earth', color: 'pink', mass_kg: 4.000e24, distance: 1.800e8, fact: 'Only planet known to have the same name as our Earth')
            
            star_name = "Sol"
            solar_system = SolarSystem.new(star_name)
            solar_system.add_planet(earth)
            solar_system.add_planet(mars)
            solar_system.add_planet(another_earth)
            
            expect (solar_system.find_planet_by_name("EARTH")).must_equal earth
        end
        
    end
    
    describe "distance_between method" do
        it "Takes in 2 planet names as arguments" do
            mars = Planet.new(name: "Mars", color: "red-orange", mass_kg: 6.417e23, distance: 2.279e8, fact: 'The planet is named after Mars, the Roman god of war')
            earth = Planet.new(name: 'Earth', color: 'blue-green', mass_kg: 5.972e24, distance: 1.496e8, fact: 'Only planet known to support life')
            
            star_name = "Sol"
            solar_system = SolarSystem.new(star_name)
            solar_system.add_planet(earth)
            solar_system.add_planet(mars)
            
            venus = 1
            expect {solar_system.distance_between(earth.name, venus)}.must_raise ArgumentError
        end
        
        it "Takes in existing 2 planets in a solar system as arguments" do
            mars = Planet.new(name: "Mars", color: "red-orange", mass_kg: 6.417e23, distance: 2.279e8, fact: 'The planet is named after Mars, the Roman god of war')
            earth = Planet.new(name: 'Earth', color: "blue-green", mass_kg: 5.972e24, distance: 1.496e8, fact: 'Only planet known to support life')
            mercury = Planet.new(name: "Mercury", color: "dark-gray", mass_kg: 3.285e23 , distance: 0.5791e8 , fact: "A year on Mercury is just 88 days long")
            star_name = "Sol"
            solar_system = SolarSystem.new(star_name)
            solar_system.add_planet(earth)
            solar_system.add_planet(mars)
            
            expect {solar_system.distance_between(earth.name, mercury.name)}.must_raise ArgumentError
        end
        
        it "Returns a number" do
            mars = Planet.new(name: "Mars", color: "red-orange", mass_kg: 6.417e23, distance: 2.279e8, fact: 'The planet is named after Mars, the Roman god of war')
            earth = Planet.new(name: 'Earth', color: 'blue-green', mass_kg: 5.972e24, distance: 1.496e8, fact: 'Only planet known to support life')
            
            star_name = "Sol"
            solar_system = SolarSystem.new(star_name)
            solar_system.add_planet(earth)
            solar_system.add_planet(mars)
            
            distance_between_earth_and_mars = solar_system.distance_between(earth.name, mars.name)
            expect (distance_between_earth_and_mars).must_be_instance_of Integer
        end
        
        it "Returns the distance between 2 planets" do
            mars = Planet.new(name: "Mars", color: "red-orange", mass_kg: 6.417e23, distance: 2.279e8, fact: 'The planet is named after Mars, the Roman god of war')
            earth = Planet.new(name: 'Earth', color: 'blue-green', mass_kg: 5.972e24, distance: 1.496e8, fact: 'Only planet known to support life')
            
            star_name = "Sol"
            solar_system = SolarSystem.new(star_name)
            solar_system.add_planet(earth)
            solar_system.add_planet(mars)
            
            distance_between_earth_and_mars = solar_system.distance_between(earth.name, mars.name)
            expect (distance_between_earth_and_mars).must_equal 78300000
        end
    end
    
end
