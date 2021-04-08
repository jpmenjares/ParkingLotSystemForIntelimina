##creating a car
class Car
  attr_accessor :platenum, :color
  def initialize(platenum, color)
    @platenum = platenum
    @color = color
    puts "Code is working"
  end
end

##Creating a ParkingSpace
class ParkingSpace
  def initialize(parkinglot, lotnum)
    @parkinglot = parkinglot
    @lotnum = lotnum
  end
end
##methods pertaining to our actions such as parking and leaving the parking slot. 
def park(car)
  if parkingAvailable
    self.car = car
  else
    puts "There are no more slots left"
  end

end

def leaveSlot
  car = nil
end

#Check if parking slot is vacant
def parkingAvailable(car)
  !carInSlot
end

def carInSlot
  !car.nil
end




#Attendant gets information without slot assignement yet

puts "Input vehicle plate number"
plate1 = gets.chomp()
puts "Input vehicle color"
color1 = gets.chomp()

car1 = Car.new(plate1, color1)
puts car1.platenum

#Attempt to create parking slots by initializing an array

