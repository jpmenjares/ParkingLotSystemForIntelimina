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



## testing of creating arrays
## creating parking lots depending on user input
def parkingSlotCreation
  puts "How may parking spaces are available today?"
  numberOfParkingSlots = gets.chomp()
  numberOfParkingSlots = numberOfParkingSlots.to_i
  parkingSlot = Array.new(numberOfParkingSlots)
  puts "#{parkingSlot}"
end


#Parking attendant interface
def parkingUI()
  puts "How may parking spaces are available today?"
  numberOfParkingSlots = gets.chomp()
  numberOfParkingSlots = numberOfParkingSlots.to_i
  parkingSlot = Array.new(numberOfParkingSlots)
  puts "#{parkingSlot}"
  puts "Parking Allocation Solution"
  puts "Enter number of the activity you want to do"
  puts "1 - Park Car"
  puts "2 - Car exits"
  puts "3 - Find cars with specific color"
  puts "4 - Find cars with specifc plate number"
  selectedOption = gets.chomp()
  selectedOption = selectedOption.to_i

  if selectedOption == 1
    puts "Input vehicle plate number"
    plate1 = gets.chomp()
    puts "Input vehicle color"
    color1 = gets.chomp()
    car1 = Car.new(plate1, color1)
    parkingSlot[0] = car1
    puts "#{parkingSlot}"
  elsif selectedOption == 2
    puts "car exits"
  elsif selectedOption == 3
    puts "color query"
  elsif selectedOption == 4
    puts "plate number query"
  else
    puts "invalid input"
   parkingUI
  end
end

###Main method code###
#parkingSlotCreation - question i was supposed to call this method within ParkingUI or call it separately but when i do it that why, parkingUI doesnt recognize the parkingSlot array
parkingUI

###test area###
#a = Array.new(6)
#puts "#{a}"
#puts "Input vehicle plate number"
#plate1 = gets.chomp()
#puts "Input vehicle color"
#color1 = gets.chomp()
#car1 = Car.new(plate1, color1)
#a[0] = car1
#puts a[0]
#puts "#{a}"


#a = Array.new(6)
#puts "#{a}"
#a[1] = "michelle"
#puts "#{a}"



