require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'planet'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


describe "planet" do
  describe "summary method" do
    it "will return a string" do
      planet = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
      
      expect(planet.summary).must_be_instance_of String
    end
  end
end
