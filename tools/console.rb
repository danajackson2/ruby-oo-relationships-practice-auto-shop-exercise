require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

co1 = CarOwner.new("Bill")
co2 = CarOwner.new("Ted")
co3 = CarOwner.new("Nick")
co4 = CarOwner.new("Brad")

m1 = Mechanic.new("Susie", "new")
m2 = Mechanic.new("Jill", "old")
m3 = Mechanic.new("Mary", "German")
m4 = Mechanic.new("Grace", "British")
m5 = Mechanic.new("Joy", "German")

c1 = Car.new("VW", "Rabbit", "old", co1, m2) 
c2 = Car.new("Tesla", "3", "new", co2, m1) 
c3 = Car.new("Triumph", "A5", "British", co3, m4)
c4 = Car.new("Ford", "Model-T", "old", co4, m2)
c5 = Car.new("VW", "Thing", "German", co2, m3)

binding.pry

