require_relative "planet"

def main
  earth = Planet.new(name: "Earth", color: "blue-green", mass_kg: 5.972e24, distance_from_sun_km: 1.496e8, fun_fact: "Only planet known to support life")

  puts earth.name
  # => Earth
  puts earth.fun_fact
  # => Only planet known to support life

  earth.color = "pink"
  puts earth.summary
end

main
