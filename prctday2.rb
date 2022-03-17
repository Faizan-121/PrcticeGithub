$LOAD_PATH << '.'
require 'practiceDay2'

module Years
  Months = 12
  def self.days
    puts "The year days are: #{(Week::Days * 4 + 2) * Months}"
  end
end
Years.days
fai = String.new('TEST')
puts fai.downcase.to_s
arr = Array.new(10) { |ele| ele *= 3 }
puts arr.to_s
arr2 = Array.[](1, 2, 3, 4, 5)
puts arr2.at(-2)


has = Hash[1 => ["January","Jan"], 2 => "Febrarury"]
has2 = Hash[1 => "January", 3 => "Febrarury"]

puts "#{has[2]==has2[3]}"
puts "#{has.inspect}"

t1 = Time.now 
puts "#{t1.inspect}"
puts "#{t1.year}"
puts "#{t1.yday}"
puts "#{t1.zone}"
puts "#{t1.ctime}"
puts "#{t1.localtime}"

arr = ("fai".."faz").to_a
puts "#{arr}"

num = (-9..-0).to_a
puts "#{num}"
num.each do |i|
    puts "Hello: #{i*-1}"
end
a = [1,2,3,4,5]
b = Array.new
b = num.collect{|x| 10*x}
puts b