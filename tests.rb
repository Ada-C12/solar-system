require './planet'
require './solar_system'

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!


######### TEST PLANET.rb ################
describe "TESTING planet.rb initialization" do
  # Planet.new(name, color, mass, distance, fun_fact)
  
  it "Tests for valid args" do
    p1 = Planet.new('faketopia', 'rainbow', 100, 200, 'this should work!')
    assert(p1.name == 'faketopia'.capitalize)
    assert(p1.color == 'rainbow')
    assert(p1.mass_kg == 100)
    assert(p1.distance_from_sun_km == 200)
    assert(p1.fun_fact == 'this should work!')
  end
  
  it "Tests for invalid args" do
    expect {
      Planet.new()
    }.must_raise ArgumentError
    
    expect {
      Planet.new('only 1 arg here')
    }.must_raise ArgumentError
    
    # wrong data type for string args
    expect {
      Planet.new(666, 'b', 1, 2, 'c')
    }.must_raise ArgumentError
    
    # wrong data type for 2nd arg
    expect {
      Planet.new('a', 666, 1, 2, 'c')
    }.must_raise ArgumentError
    
    # wrong data type for 5th arg
    expect {
      Planet.new('a', 'b', 1, 2, 666)
    }.must_raise ArgumentError
    
  end
  
  it "Test for valid error checking on mass & distance args" do
    # Planet.new() has built-in methods to keep prompting until valid args given
    puts "\n\nExpecting Planet.new() to prompt u to give a valid pos integer/float:"
    p2 = Planet.new("A", "B", -1, -2, "C")
    assert(p2.mass_kg > 0)
    assert(p2.distance_from_sun_km > 0)
    
    puts "\nExpecting Planet.new() to prompt u to give a valid pos integer/float:"
    p3 = Planet.new('a', 'b', nil, nil, 'c')
    assert(p3.mass_kg > 0)
    assert(p3.distance_from_sun_km > 0)
  end
  
end
######### end TEST PLANET.rb ################



########### HELPER FCNs ##############
def solarSystemSample
  # for individ testing purposes: returns a solar system with 2 Planet objs (earth & mars) 
  earth = Planet.new('earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('mars', 'red', 5.972e22, 1.495e8, 'It has aliens on it')
  solar_sys = SolarSystem.new('Sun')
  solar_sys.add_planet(earth)
  solar_sys.add_planet(mars)
  return solar_sys
end
########### end helpers ##############



######### TEST SOLAR_SYSTEM.rb ################
describe "TESTING solar_system.rb" do
  
  it "Test for initialization" do
    # test for valid SolarSystem obj
    ss = SolarSystem.new('Sun1')
    assert(ss.star_name == 'Sun1')
    assert(ss.planets == [])
    
    # test for invalid SolarSystem objs
    expect {
      ss = SolarSystem.new('Sun2', 'unwelcome arg')
    }.must_raise ArgumentError
    
    bad_args = [nil, '', {}, []]
    bad_args.each do |bad_arg|
      expect {
        ss = SolarSystem.new(bad_arg)
      }.must_raise ArgumentError
    end
  end
  
  it "Test for add_planet()" do
    # sample data
    earth = Planet.new('earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    mars = Planet.new('mars', 'red', 5.972e22, 1.495e8, 'It has aliens on it')
    dupe = earth
    ss_sample = SolarSystem.new('Sun')
    
    # test for valid args
    good_args = [earth, mars]
    good_args.each do |good_arg|
      ss_sample.add_planet(good_arg)
      assert(ss_sample.planets.include? good_arg)
    end
    
    # test to exclude duplicate planets
    expect {
      ss_sample.add_planet(dupe)
    }.must_raise ArgumentError
    
    # test for invalid args
    bad_args = [123, "fake", [], {}, String.new, true, false, nil]
    bad_args.each do |bad_arg|
      expect {
        ss_sample.add_planet(bad_arg)
      }.must_raise ArgumentError
    end
  end
  
  it "Test for list_planets()" do
    ss_sample = solarSystemSample
    
    planet_list_str = ss_sample.list_planets
    assert(planet_list_str.include? "Earth")
    assert(planet_list_str.include? "Mars")
  end
  
  it "Test for find_planet_by_name()" do
    ss_sample = solarSystemSample
    
    good_args = ['earth', 'EARTH', 'eARTH', 'mArS']
    good_args.each do |good_arg|
      returned_obj = ss_sample.find_planet_by_name(good_arg)
      assert (returned_obj.name.upcase == good_arg.upcase)
    end
    
    #### FIX THIS SHIT!!!! ####
    # test for invalid args: typeError from non-String args 
    fake_planet = Planet.new('a', 'b', 1, 2, 'should raise error b/c fcn calls for strings')
    bad_args = [123, [], {}, true, false, nil, fake_planet]
    bad_args.each do |bad_arg|
      expect {
        ss_sample.find_planet_by_name(bad_arg)
      }.must_raise TypeError
    end
    
    # test for invalid args: ArgumentError from nonsense String args
    bad_args = ["e a r t h", "fake", String.new]
    bad_args.each do |bad_arg|
      expect {
        ss_sample.find_planet_by_name(bad_arg)
      }.must_raise ArgumentError
    end
    
    # test for invalid arg: valid Planet obj but not in ss_sample
    pluto = Planet.new('pluto', 'purple', 100, 200, 'Pluto is NOT in ss_sample!!!')
    expect {
      ss_sample.find_planet_by_name('PLUTO')
    }.must_raise ArgumentError
  end
  
  it "Test for distance_between()" do
    earth = Planet.new('earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    mars = Planet.new('mars', 'red', 5.972e22, 1.495e8, 'It has aliens on it')
    ss_sample = solarSystemSample
    
    # test for valid args
    result = ss_sample.distance_between('earth', 'MARS')
    manual_calc = (earth.distance_from_sun_km - mars.distance_from_sun_km).abs
    assert(result == manual_calc)
    
    # test for invalid args
    # unnecessary, will already have been caught by find_planet_by_name() therein
  end
end

######### TEST SOLAR_SYSTEM.rb ################


