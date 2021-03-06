##creating a car
class Car
  attr_accessor :platenum, :color
  def initialize(platenum, color)
    @platenum = platenum
    @color = color
  end
end

##Creating a ParkingSpace
class ParkingSpace
  attr_accessor :parkingSlot
  def initialize()
  end
  def SetParkingSlot(num)
    @parkingSlot = Array.new(num)
  end 
  def GetParkingSlot()
    return @parkingSlot
  end
end


## creating parking lots depending on user input
def parkingSlotCreation(p)
  puts "How may parking spaces are available today?"
  numberOfParkingSlots = gets.chomp()
  numberOfParkingSlots = numberOfParkingSlots.to_i
  parkingSlot = p.SetParkingSlot(numberOfParkingSlots)
  puts "#{parkingSlot}"
end


#Parking attendant interface
def parkingUI(pspace)
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
    freeSlotNo = pspace.parkingSlot.index(nil)
    puts "#{freeSlotNo}"
    if freeSlotNo != nil
      pspace.parkingSlot[freeSlotNo] = car1
    else
      puts "PARKING SLOT IS FULL!!!"
    end
    puts "#{pspace.parkingSlot}"
  elsif selectedOption == 2
    puts "Car exits"
    puts "Enter the plate number of the car thats leaving:"
    carExit = gets.chomp()
    slotArray = pspace.parkingSlot.each_index.select { |idx| pspace.parkingSlot[idx] != nil and pspace.parkingSlot[idx].platenum == carExit} 
    if slotArray.length() > 0
      #iterate array to be able to input the nil value to the array
     slotArray.each_with_index {|val, index| pspace.parkingSlot[index] = nil  }
     puts slotArray 
    else
      puts "Car not found"
    end
  elsif selectedOption == 3
    puts "Color query"
     puts "What's color of the car are you looking for"
    searchColor = gets.chomp()
    searchColor = searchColor.to_s
    slotArray = pspace.parkingSlot.each_index.select { |idx| pspace.parkingSlot[idx] != nil and pspace.parkingSlot[idx].color == searchColor
    } # Returns index on array
    if slotArray.length() > 0
      puts "Cars can be found in the following slots:" + slotArray.to_s
    else
      puts "Car not found"
    end
  elsif selectedOption == 4
    puts "plate number query"
    puts "What's the plate number of the car you are looking for?"
    searchPlateNum = gets.chomp()
    searchPlateNum = searchPlateNum.to_s
    slotArray = pspace.parkingSlot.each_index.select { |idx| pspace.parkingSlot[idx] != nil and pspace.parkingSlot[idx].platenum == searchPlateNum
    } # Returns index on array
    if slotArray.length() > 0
      puts "Cars can be found in the following slots:" + slotArray.to_s
    else
      puts "Car not found"
    end
  else
    puts "invalid input"
  end
  parkingUI(pspace)
end

###### MAIN METHOD #####
pspace = ParkingSpace.new()
parkingSlotCreation(pspace)
###activate Test case for debugging
#pspace.parkingSlot[0] = Car.new('abc123', 'red')
#pspace.parkingSlot[1] = Car.new('def456', 'white')
#pspace.parkingSlot[2] = Car.new('qwe783', 'red')
parkingUI(pspace)





  



