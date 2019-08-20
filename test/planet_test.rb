require "minitest"
require "minitest/spec"
require "minitest/autorun"
require "minitest/reporters"
require "minitest/pride"

require_relative "../lib/planet.rb"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Planet class" do
  it "can create a new planet" do
    mars = Planet.new("Mars", "red", 6.39e23, 227900000, "Known as the red planet due to its reddish appearance")
    mars.class.must_equal Planet
  end

  it "will print the summary of a planet" do
    planet = Planet.new("Earth", "blue-green", 5.972e24, 1496e8, "Only planet known to support life")

    summary_of_planet = planet.summary

    summary_of_planet.must_equal("Planet Earth is blue-green, weighs 5.972e+24 kg, and is about 149600000000.0 km from the sun. Fun fact: Only planet known to support life")
  end

  it "will print a planet's name" do
    earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")

    earth.name.must_equal("Earth")
  end
end
