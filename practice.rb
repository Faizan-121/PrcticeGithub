# Comment
# END {
#     puts 'This is end statement'
# }
# puts 'This is main Ruby Program'
#
# BEGIN {
#    puts 'Initializing Ruby Program'
# }
class Cars
  @@car_mileage = 0
  def initialize(mil, price, model, wheel)
    @@car_mileage = mil
    @car_price = price
    @car_model = model
    @no_of_wheels = wheel
  end

  def display
    puts "The car mileage is #{@@car_mileage}"
    puts "The car price is #{@car_price}"
    puts "The car model is #{@car_model}"
    puts "The car wheels are #{@no_of_wheels}"
  end

  def increasemileage(mil)
    @car_model += mil
  end
end

c1 = Cars.new(14.5, '19999', 123, '4')
c1.display
c1.increasemileage(3.5)
c1.display
$faizai = 42
puts defined? $faizai
CONST = ' out there'
class Inside_one
  CONST = proc { ' in there' }
  def where_is_my_CONST
    ::CONST + ' inside one'
  end
end

class Inside_two
  CONST = ' inside two'
  def where_is_my_CONST
    CONST
  end
end
puts Inside_one.new.where_is_my_CONST
puts Inside_two.new.where_is_my_CONST
puts Object::CONST + Inside_two::CONST
puts Inside_two::CONST + CONST
puts Inside_one::CONST
puts Inside_one::CONST.call + Inside_two::CONST