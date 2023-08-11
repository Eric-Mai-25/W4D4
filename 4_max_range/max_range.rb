def max_range(arr, w)
    cmr = nil
    (0..arr.length-w).each do  |i |
        range = arr[i...i+w]
        max = range.max
        min = range.min
        cmr = max - min if cmr.nil?
        cmr = max - min if cmr < max - min
    end
    cmr
end

p max_range([1,2,3,5], 3) # => 3
p max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8

class MyQueue
    def initialize 
        @store = []
    end

    def peek 
        @store.last
    end

    def size
        @store.length
    end

    def empty?
        @store.length == 0
    end

    def enqueue(ele)
        @store << ele
    end

    def dequeue
        @store.shift
    end

end

class MyStack
    def initialize
      @store = []
    end

    def peek 
        @store.last
    end

    def size
        @store.length
    end

    def empty?
        @store.length == 0
    end

    def pop
        @store.pop
    end

    def push(ele)
        @store << ele
    end
  end

  #Mystack = [a,b]
  #Dequeue = [b,a]
  #StackQueue = [b,a]
  #Myst
  class StackQueue << MyStack

    def initialize

        @store = []
    end
    
    def size

    end

    def empty?

    end

    def enqueue

    end

    def dequeue

    end

  end