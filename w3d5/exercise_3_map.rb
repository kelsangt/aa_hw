class Map
    def initialize
        @map = []
    end
    
    def set(key, value)
        @map.each do |sub_arr|
            if sub_arr[0] == key
                sub_arr[-1] = value
                return
            end
        end

        @map << [key, value]
    end

    def get(key)
        @map.each do |sub_arr|
            if sub_arr[0] == key
                return sub_arr[-1]
            end
        end
        nil
    end

    def delete(key)
        @map.each_with_index do |sub_arr, idx|
            if sub_arr[0] == key
                @map.delete_at(idx)
            end
        end
    end

    def show
        @map
    end
end