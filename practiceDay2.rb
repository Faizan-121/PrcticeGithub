class Cars
  @@wheels = 4
  @@price = 2000
  def display(price = @@price, wheels = @@wheels, model = 2019)
    puts "The car price is #{price}"
    puts "The no of wheels are #{wheels}"
    puts "The model is #{model}"
  end
end

c1 = Cars.new
c1.display
c1.display(4567, 4, 2018)
def test
  puts 'In the method'
  yield 'Faizan', 123
  puts 'In the method'
  yield 'Riasat', 345
end

test { |a, b| puts "Hello #{a}, with code #{b}" }

module Week
  Days = 7
  def self.total_days
    puts "You have total days: #{Days}"
  end

  def self.total_month_days
    puts "You have total days in month: #{Days * 4 + 2}"
  end
end

puts "Days #{Week::Days}"
Week.total_month_days


