require_relative 'linked_list'
class HashTable

  def initialize
    @buckets = []
  end

  def hash(word)
    word.split[0].downcase.ord-97
  end

  def insert(word, define="")
    if @buckets[hash(word)].nil?
      @buckets[hash(word)] = LinkedList.new
    end
    @buckets[hash(word)].add_node(word, define)
  end

  def render_list
    @buckets.each do |list|
      if list.is_a?(LinkedList)
        list.print_list
        puts
      end
    end
  end

  def import(results)
    results.each do |word|
      insert(word, "is a #{word}")
    end
  end

  def define(word)
    if !@buckets[hash(word)].nil?
      current_node = @buckets[hash(word)].head
    else
      puts "cannot find word"
      return
    end

    while !current_node.nil?
      if (current_node.word == word)
        puts "The definition of #{word} is #{current_node.define}"
        return
      end
      current_node = current_node.next
    end
    puts "cannot find word"

  end


end

words = []
raw_words = File.readlines("5desk.txt")
raw_words.each do |word|
  words << word.strip
end

h = HashTable.new
# h.import(words)
h.insert("hello", "s")
h.render_list
h.define("hello")
