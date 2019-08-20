require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/solar_system'
require_relative "../lib/planet"

# Get that nice colorized output
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'SolarSystem' do
  describe "initialize method" do
    it "correctly initializes a solar system" do
      solar_system = SolarSystem.new("Sun")
      
      expect(solar_system.star_name).must_equal "Sun"
      expect(solar_system.planets).must_equal []      
    end
  end
  
  describe "add_planet method" do
    it "correctly adds a new planet to the system" do
      solar_system = SolarSystem.new("Sol")
      
      mercury = Planet.new("Mercury", "gray", 10, 40, "There is no water on Mercury.")
      mars = Planet.new("Mars", "red", 20, 30, "The movie Total Recall is about Mars.")
      
      solar_system.add_planet(mercury)
      solar_system.add_planet(mars)
      
      expect(solar_system.planets).must_equal [mercury, mars]
    end
  end
  
  describe "list_planets method" do
    it "correctly lists all planets in the system" do
      solar_system = SolarSystem.new("Superstar")
      
      mercury = Planet.new("Mercury", "gray", 10, 40, "There is no water on Mercury.")
      mars = Planet.new("Mars", "red", 20, 30, "The movie Total Recall is about Mars.")
      
      solar_system.add_planet(mercury)
      solar_system.add_planet(mars)
      
      expected_string = "Planets orbiting Superstar\n1. Mercury\n2. Mars"
      
      expect(solar_system.list_planets).must_equal expected_string
    end
  end
  
  describe "find_planet_by_name method" do
    it "returns a message if the planet is not found" do
      solar_system = SolarSystem.new("Sunny")
      
      expected_string = "This solar system does not have a planet named Earth."
      
      expect(solar_system.find_planet_by_name("earth")).must_equal expected_string    
    end
    
    it "correctly finds a single planet that exists in the system" do
      solar_system = SolarSystem.new("Sunny")
      
      venus = Planet.new("Venus", "purple", 40, 70, "This was named after a Greek god.")
      uranus = Planet.new("Uranus", "gray", 25, 80, "This planet is gaseous.")
      
      solar_system.add_planet(venus)
      solar_system.add_planet(uranus)
      
      expected_string = "Planet: Venus, Color: purple, Mass: 40 kg, Distance from sun: 70 km, Fun fact: This was named after a Greek god."
      
      expect(solar_system.find_planet_by_name("venus")).must_equal expected_string 
    end
    
    it "correctly finds two planets with the same name" do
      solar_system = SolarSystem.new("Sun")
      
      venus = Planet.new("Venus", "purple", 40, 70, "This was named after a Greek god.")
      uranus = Planet.new("Venus", "gray", 25, 80, "This planet is gaseous.")
      
      solar_system.add_planet(venus)
      solar_system.add_planet(uranus)
      
      expected_string = "There are mutliple planets with that name:" \
      "\nPlanet: Venus, Color: purple, Mass: 40 kg, Distance from sun: 70 km, Fun fact: This was named after a Greek god." \
      "\nPlanet: Venus, Color: gray, Mass: 25 kg, Distance from sun: 80 km, Fun fact: This planet is gaseous."
      
      expect(solar_system.find_planet_by_name("Venus")).must_equal expected_string
    end
  end
  
  describe "distance_between method" do
    it "calculates distance when first planet is closet to sun " do
      solar_system = SolarSystem.new("Sun")
      
      mercury = Planet.new("Mercury", "gray", 10, 50, "There is no water on Mercury.")
      mars = Planet.new("Mars", "red", 20, 100, "The movie Total Recall is about Mars.")
      
      solar_system.add_planet(mercury)
      solar_system.add_planet(mars)
      
      expect(solar_system.distance_between(mercury, mars)).must_equal 50
    end
    
    it "calculates distance when second planet is closet to sun " do
      solar_system = SolarSystem.new("Sun")
      
      mars = Planet.new("Mars", "red", 20, 100, "The movie Total Recall is about Mars.")
      venus = Planet.new("Venus", "purple", 40, 200, "This was named after a Greek god.")
      
      solar_system.add_planet(mars)
      solar_system.add_planet(venus)
      
      expect(solar_system.distance_between(venus, mars)).must_equal 100
    end
  end
end
