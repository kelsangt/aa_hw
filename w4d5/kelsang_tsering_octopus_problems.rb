class Array 

def sluggish_octopus
    max_length_ele = self[0]
    (1...self.length).each do |ele|
        (ele + 1...self.length).each do |ele2|
            if ele2 > ele
                max_length_ele = self[ele2]
            end
        end
    end
    max_length_ele
end

def dominant_octopus
    return self if self.length < 2
    middle = self.length / 2
    left = self.take(middle)
    right = self.drop(middle)

    sorted_left = left.dominant_octopus
    sorted_right = right.dominant_octopus

    Array.merge(sorted_left, sorted_right)
end

def self.merge(left, right)
    final_arr = []
    until left.empty? || right.empty? 
        if left.first.length < right.first.length
            final_arr << left.shift
        else 
            final_arr << right.shift 
        end
    end
    final_arr + left + right
end

def clever_octopus
    max_length = 0
    max_fish = ""
    self.each do |ele|
        if ele.length > max_length 
            max_fish = ele
        end
    end
    max_fish
end

end

def slow_dance(direction, array)
    array.each_with_index do |ele, idx|
        return idx if direction == ele
    end
end

def fast_dance(direction, hash)
    hash[direction]
end

fish_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
'fiiiissshhhhhh']

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", 
               "left",  "left-up" ]

tiles_hash = {"up"=>0, "right-up"=>1, "right"=>2, "right-down"=>3, "down"=>4, "left-down"=>5, "left"=>6, "left-up"=>7}

puts fish_arr.sluggish_octopus
puts fish_arr.dominant_octopus
puts fish_arr.clever_octopus


p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)

p fast_dance("up", tiles_hash)
p fast_dance("right-down", tiles_hash)
