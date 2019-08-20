require './planet'
require './solar_system'

require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!


######################################
describe "TESTING planet.rb initialization" do
  # Planet.new(name, color, mass, distance, fun_fact)
  
  it "Tests for valid planet" do
    p1 = Planet.new('faketopia', 'rainbow', 100, 200, 'this should work!')
    assert(p1.name == 'faketopia')
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
  
  # it "Test for valid error checking on mass & distance args" do
  #   # Planet.new() has built-in methods to keep prompting until valid args given
  #   puts "\n\nExpecting Planet.new() to prompt u to give a valid pos integer/float:"
  #   p2 = Planet.new("A", "B", -1, -2, "C")
  #   assert(p2.mass_kg > 0)
  #   assert(p2.distance_from_sun_km > 0)
  
  #   puts "\nExpecting Planet.new() to prompt u to give a valid pos integer/float:"
  #   p3 = Planet.new('a', 'b', nil, nil, 'c')
  #   assert(p3.mass_kg > 0)
  #   assert(p3.distance_from_sun_km > 0)
  # end
  
end


######################################
describe "TESTING solar_system.rb" do
  
  it "Test for initialization" do
    # test for valid SolarSystem obj
    ss = SolarSystem.new('Sun1')
    assert(ss.star_name == 'Sun1')
    assert(ss.planets == [])
    
    # test for invalid SolarSystem objs
    expect {
      ss = SolarSystem.new('Sun2', 'extra stuff')
    }.must_raise ArgumentError
    
    bad_args = [nil, '', {}, []]
    bad_args.each do |bad_arg|
      expect {
        ss = SolarSystem.new(bad_arg)
      }.must_raise ArgumentError
    end
  end
  
  # SEED DATA FOR TESTING METHODS
  earth_seed = Planet.new('earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars_seed = Planet.new('mars', 'red', 5.972e22, 1.495e8, 'It has aliens on it')
  ss_seed = SolarSystem.new('Sun')
  
  it "Test for add_planet()" do
    # test for valid args
    good_args = [earth_seed, mars_seed]
    good_args.each do |good_arg|
      ss_seed.add_planet(good_arg)
      assert(ss_seed.planets.include? good_arg)
    end
    
    # test to exclude duplicate planets
    dupe = earth_seed
    expect {
      ss_seed.add_planet(dupe)
    }.must_raise ArgumentError
    
    # test for invalid args
    non_Planet_obj = String.new()
    bad_args = [123, "fake", [], {}, non_Planet_obj, true, false, nil]
    bad_args.each do |bad_arg|
      expect {
        ss_seed.add_planet(bad_arg)
      }.must_raise ArgumentError
    end
  end
  
  it "Test for list_planets()" do
    # to read off of @planets, it'll already have to pass add_planet()'s checks
    # ss_seed has earth_seed & mars_seed already added at this point
    planet_list_str = ss_seed.list_planets
    # puts "\n\nHERE IT IS:", ss_seed.planets, planet_list_str
    assert(planet_list_str.include? earth_seed.name)
    assert(planet_list_str.include? mars_seed.name)
  end
  
  # it "Test for find_planet_by_name()" do
  #   # ss_seed has earth_seed & mars_seed already added at this point
  #   good_args = ['earth_seed', 'earth_seed', 'earth_seed', 'mars_seed']
  #   good_args.each do |good_arg|
  #     returned_obj = ss_seed.find_planet_by_name(good_arg)
  #     assert(returned_obj.name.upcase == good_arg.upcase)
  #   end
  # end
  
  # it "Test for distance_between()" do
  #   # distance_between() incorporated find_planet_by_name() checks
  #   # ss_seed has earth_seed & mars_seed already added at this point
  
  #   # test for valid args
  #   puts "\n\nHERE IT IS:"
  #   puts ss_seed.inspect
  #   # puts ss_seed.distance_between('earth_seed', 'mars_seed')
  
  # end
end




