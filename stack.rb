class Stack

  def initialize
    @data = []
    @top_index = 0
  end

  def push(item)
    @data[@top_index] = item
    @top_index += 1
    return item
  end

  def pop
    if @top_index == 0
      puts "cannot pop"
      return
    end

    result = @data[@top_index-1]

    @data[@top_index] = nil
    @top_index -=1
    return result
  end

  def peek
    @data[@top_index-1]
  end

  def empty?
    return true if @top_index == 0
    return false
  end

end

  #
  # s = Stack.new
  #
  # s.push("swag")
  # s.push("nigger")
  # s.push("yolo")
  # s.push("rape")
  # s.push("dope")
  # puts s.peek
  # puts s.empty?
  # s.pop()
  # s.pop()
  # s.pop()
  # s.pop()
  # s.pop()
  # s.pop()
  # s.pop()
  # puts s.peek
  # puts s.empty?

puts "stacking up calvin"
s = Stack.new
s.push('c')
s.push('a')
s.push('l')
s.push('v')
s.push('i')
s.push('n')

while !s.empty?
  puts s.pop()
end
