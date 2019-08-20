require_relative 'planet'

def welcome
  puts "Welcome to the Build Your Own Planet Game!"
  puts "What would you like to do next? You can choose from: \n 1. List Planets \n 2. Planet Details \n 3. Add Planet \n 4. Exit"
end

def main 
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  bart_simpson = Planet.new("Bart Simpson", "yellow-ish", 123243, 23432534, "Only planet whos motto is 'eat my shorts' ")
  lisa_simpson = Planet.new("Lisa Simpson", "orange", 123242, 2343254, "Only planet to always play Jazz")
  maggie_simpson = Planet.new("Maggie Simpson", "blue", 2342343, 23121, "Only planet that never ages")
  
  
end
main_menu  