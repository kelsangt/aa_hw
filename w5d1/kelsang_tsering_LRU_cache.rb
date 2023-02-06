class LRUCache
    def initialize(n)
        @n = n
        @cache = []
        self.fill_cache(n)
    end

    def count
        counter = 0
        @cache.each do |ele|
            if ele != nil 
                counter += 1 
            end
        end
        counter
    end

    def add(el)
        if self.count < @n
            if !@cache.include?(el)
                @cache.push(el)
            end
        else 
            @cache.shift 
            if !@cache.include?(el)
                @cache.push(el)
            end
        end
    end

    def show
        @cache.each do |ele|
            p ele if ele != nil
        end
    end

    private

    def fill_cache(n)
        @cache << nil
    end

  end


  johnny_cache = LRUCache.new(4)

  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  johnny_cache.count 

  johnny_cache.add([1,2,3])
  johnny_cache.add(5)
  johnny_cache.add(-5)
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})


  johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]