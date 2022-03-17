$LOAD_PATH << '.'
require 'linkedList'

l1 = LinkedList.new
l1.add_at_index(0, 1)

l1.add_at_index(0,0)

l1.add_at_index(1,2)
=begin
l1.add_at_index(2,3)
l1.add_at_index(2,4)
=end
puts "Length is #{l1.length}"
l1.display 
l1.pop_head
puts "Length is #{l1.length}"
l1.display 
l1.pop_head
puts "Length is #{l1.length}"
l1.display 