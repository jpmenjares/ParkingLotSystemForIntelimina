##creating a car
class Car
  attr_accessor :platenum, :color
  def initialize(platenum, color)
    @platenum = platenum
    @color = color
    puts "Code is working"
  end
end

#Attendant gets information without slot assignement yet

puts "Input vehicle plate number"
plate1 = gets.chomp()
puts "Input vehicle color"
color1 = gets.chomp()

car1 = Car.new(plate1, color1)
puts car1.platenum

#Attempt to create parking slots by initializing an array
array = Array.new(6)
array = [car1.color]
puts array