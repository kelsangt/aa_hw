
def add_numbers(nums_array)
    return nil if nums_array.empty?
    return nums_array[-1] if nums_array.length <= 1
    nums_array[0] + add_numbers(nums_array[1..-1])
end




# Test Cases
p add_numbers([1,2,3,4]) # => returns 10
p add_numbers([3]) # => returns 3
p add_numbers([-80,34,7]) # => returns -39
p add_numbers([]) # => returns nil