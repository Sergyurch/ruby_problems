module Enumerable
    def my_each
      for n in self
        yield(self[n])
      end
    end
    
    def my_each_with_index
      res = []
      for n in 0...self.length do
        res << yield(self[n], n)
      end
      res
    end
    
    def my_select
      arr = []
      for n in self
        if yield(n)
          arr << n
        end
      end
      arr
    end
    
    def my_all?
      for n in self
        if !yield(n)
          return false
        end
      end
      return true
    end
    
    def my_any?
      for n in self
        if yield(n)
          return true
        end
      end
      return false
    end
    
    def my_none?
      for n in self
        if yield(n)
          return false
        end
      end
      return true
    end
    
    def my_count
      res = 0
      self.my_each {|x| res += 1}
      res
    end
    
    def my_map
      arr = []
      for n in self do
        arr << yield(n)
      end
      arr
    end
    
    def my_inject
      res = 0
      for n in self do
        res = yield(res, n)
      end
      res
    end
    
    def multiply_els
      res = 1
      self.my_each {|x| res *= x}
      res
    end
end


    
