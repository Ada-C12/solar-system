require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/planet'

# 
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'planet' do
    it 'check the input of the planet' do
        earth = Planet.new('Earth', 'green', 5.972e24, 5.5, 'Only planet known to support life')
        expect(earth.name).must_equal "Earth"
        expect(earth.name).must_be_instance_of String
    end
end

describe 'planet' do
    it 'check if mass and distance are greater than zero' do
        earth = Planet.new('Earth', 'green', 5.972e24, 5.5, 'Only planet known to support life')
        expect(earth.mass_kg).must_be :>, 0
        expect(earth.distance_from_sun_km).must_be :>, 0
    end
end

describe 'planet' do
    it 'check if mass and distance are number' do
        earth = Planet.new('Earth', 'green', 5.972e24, 5.5, 'Only planet known to support life')
        expect(earth.mass_kg).must_be_instance_of Float
        expect(earth.distance_from_sun_km).must_be_instance_of Float
    end
end

describe 'planet' do
    it 'check if color and fun_fact is a string' do
        earth = Planet.new('Earth', 'green', 5.972e24, 5.5, 'Only planet known to support life')
        expect(earth.fun_fact).must_be_instance_of String
        expect(earth.color).must_be_instance_of String
    end
    it 'raises an ArgumentError if number is less then zero' do
    
        expect{Planet.new('Earth', 'green', -100, 5.5, 'Only planet known to support life')}.must_raise ArgumentError
      end
    
end
