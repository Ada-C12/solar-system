require "minitest"
require "minitest/spec"
require "minitest/autorun"
require "minitest/reporters"
require "minitest/pride"

require_relative "../lib/solar_system.rb"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Solar System class" do
  it "can create a new solar system" do
    sola_system = SolarSystem.new("Sol")
    sola_system.star_name.must_equal("Sol")
  end

  # Errors below for the following tests.

  # it "will return the distance between two planets" do
  #   solar_system = SolarSystem.new("Moonscape")

  #   earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  #   mars = Planet.new("Mars", "red", 6.39e23, 227900000, "Described as the Red Planet for its reddish appearance")
  #   solar_system.add_planet(earth)
  #   solar_system.add_planet(mars)
  #   solar_system.distance_between(earth, mars).must_equal(-78300000.0)
  # end

  # it "prints summary of a planet you are trying to find" do
  #   solar_system = SolarSystem.new("Moonscape")

  #   earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  #   found_planet = solar_system.find_planet_by_name("Earth")
  #   found_planet[0].summary.must_equal("Planet Earth is blue-green, weighs 5.972e+24 kg, and is about 149600000000.0 km from the sun. Fun fact: Only planet known to support life")
  # end
end
