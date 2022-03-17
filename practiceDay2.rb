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
