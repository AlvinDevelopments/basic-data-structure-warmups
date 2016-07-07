
class Queue

  def initialize
    @data = []
    @end_index = 0
  end

  def enqueue(item)
    @data[@end_index] = item
    @end_index+=1
    return item
  end

  def dequeue
    return if empty?
    result = @data[0]
    @data.each_with_index do |item, i|
      @data[i] = @data[i+1]
    end
    @end_index-=1


    return result
  end


  def peek
    @data[0]
  end

  def empty?
    return true if @end_index == 0
    return false
  end

end

q = Queue.new

q.enqueue('c')
q.enqueue('a')
q.enqueue('l')
q.enqueue('v')
q.enqueue('i')
q.enqueue('n')

puts q.dequeue
puts q.dequeue
puts q.dequeue
puts q.dequeue
puts q.dequeue
puts q.dequeue
