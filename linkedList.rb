$LOAD_PATH << '.'
require 'node'
class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  def is_empty?
    if @head.nil? && @tail.nil?
      true
    else
      false
    end
  end

  def add_at_head(data)
    if is_empty?
      temp_Node = Node.new(data)
      temp_Node.next = nil
      temp_Node.previous = nil
      @head = temp_Node
      @tail = temp_Node

    else
      temp_Node = Node.new(data)
      temp_Node.previous = nil
      @head.previous = temp_Node
      temp_Node.next = @head
      @head = temp_Node
    end
  end

  def add_at_tail(data)
    if is_empty?
      temp_Node = Node.new(data)
      temp_Node.next = nil
      temp_Node.previous = nil
      @head = temp_Node
      @tail = temp_Node
    else
      temp_Node = Node.new(data)
      temp_Node.next = nil
      temp_Node.previous = @tail
      @tail.next = temp_Node
      @tail = temp_Node
    end
  end

  def length
    sum = 0
    unless is_empty?
      temp_Node = @head
      until temp_Node.nil?
        sum += 1
        temp_Node = temp_Node.next
      end
    end
    sum
  end

  def pop_head
    if is_empty?
      puts 'Sorry, linked list is empty'
    elsif length == 1
      var = @head.data
      @head = nil
      @tail = nil
      var
    else
      var = @head.data
      temp_Node = @head.next
      temp_Node.previous = nil
      @head = temp_Node
      var
    end
  end

  def pop
    if is_empty?
      puts 'Sorry, linked list is empty'
    elsif length == 1
      var = @tail.data
      @tail = nil
      @head = nil
      var
    else
      var = @tail.data
      temp_Node = @tail.previous
      temp_Node.next = nil
      @tail = temp_Node
      var
    end
  end

  def add_at_index(index, data)
    if index == 0
      add_at_head(data)
    elsif index == length - 1
      add_at_tail(data)
    elsif index > length - 1
      puts 'Wrong index'
    else
      var = 0
      temp_Node = @head
      while var != index
        var += 1
        temp_Node = temp_Node.next
      end
      temp_Node = temp_Node.previous
      newNode = Node.new(data)
      newNode.next = temp_Node.next
      newNode.previous = temp_Node
      temp_Node.next.previous = newNode
      temp_Node.next = newNode
    end
  end

  def display
    if is_empty?
      puts 'Sorry, linked List is empty'
    elsif length == 1
      puts "Head and tail is same node with data: #{@head.data}"
    elsif length == 2
      puts "Head is node with data: #{@head.data}"
      puts "Tail is node with data: #{@tail.data}"
    else
      puts "Head is node with data: #{@head.data}"
      temp_Node = @head.next
      var = 1
      until temp_Node.next.next.nil?
        puts "Node with index #{var} has data: #{temp_Node.data}"
        var += 1
        temp_Node = temp_Node.next
      end
      puts "Node with index #{var} has data: #{temp_Node.data}"
      puts "Tail is node with data: #{@tail.data}"
    end
  end
end
