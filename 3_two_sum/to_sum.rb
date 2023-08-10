def to_sum(arr, target)

end

# arr = [0, 1, 5, 7]
# p two_sum?(arr, 6) # => should be true
# p two_sum?(arr, 10) # => should be false

#TC: O(n^2)
def bad_two_sum?(arr, target)
    (0...arr.length).each do |i|
        (i+1...arr.length).each do |j|
            return [i, j] if arr[i] + arr[j] == target
        end
    end

    false
end

def okay_two_sum?(arr, target)
    sorted = arr.sort
    i, j = 0, sorted.length - 1

    while i != j
        return true if sorted[i] + sorted[j] == target

        if sorted[i] + sorted[j] < target
            i += 1
        elsif sorted[i] + sorted[j] > target
            j -= 1
        end
    end
    false
end
# arr = [0, 1, 5, 7]
# p okay_two_sum?(arr, 6) # => should be true
# p okay_two_sum?(arr, 10) # => should be false


def to_sum(arr, target)
    hash = Hash.new()
    arr.each do |el| 
        # hash[el] += 1
        hash[el].nil? ? hash[el] = 0 : hash[el] += 1
    end

    # puts hash
    arr.each do |el|
        diff = target - el
        # return false if hash[target - el] == 0 || !hash[target - el]
        if hash[diff] 
            if diff == el 
                return true if hash[diff] > 0
            else
                return true
            end
        end

    end

    false
end

arr = [0, 1, 5, 5, 7]
p to_sum(arr, 8) # => should be true
p to_sum(arr, 11) # => should be false

