$LOAD_PATH << '.'
require 'linkedList'

l1 = LinkedList.new
l1.add_at_head(0)
l1.add_at_tail(1)
l1.add_at_tail(2)
l1.add_at_tail(3)
l1.add_at_tail(4)
puts "Length is #{l1.length}"
l1.display 
l1.remove_at_index(4)
puts "Length is #{l1.length}"
l1.display 

puts "Enter a number:"
#num = gets
#puts "Entered thing is:#{num}"

file = File.new("fazi.txt", "r")
if file
   # puts "#{file.sysread(100)}"
else
    puts "Unable to open file"
end

arr = IO.readlines("fazi.txt")
puts arr[5]