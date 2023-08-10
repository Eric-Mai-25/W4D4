
#TC: O(n), because only iterate through list once
def my_min(list)
    result = list.first

    list.each {|el| result = el if el < result}

    result
end
# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list) 


#TC: n^3
# def largest_contiguous_subsum(list)
#     largest_sum = list.first
#     (0...list.size).each do |i|
#         largest_sum = list[i] if list[i] > largest_sum
#         (i+1...list.size).each do |j| #
#             largest_sum = list[i..j].sum if list[i..j].sum > largest_sum
#         end
#     end

#     largest_sum
# end

#two counters: i, j
#max_sum -> start
#increment j
#when i != j, increment cur_sum with list[j]
# if cur_sum > max_sum -> replace max_sum with cur_sum
# j incremented
# if cur_sum < 0 -> set i = j + 1 && j += 1
#list=[1,2,3, 4, -2, 8]
def largest_contiguous_subsum(list)
    i = 0
    j = 0
    max_sum = list[0]
    current_sum = list[0]

    while j < list.size
        if i == j
            max_sum = list[i] if list[i] > max_sum
            current_sum = list[i]
        elsif current_sum + list[j] > 0
            current_sum += list[j]
        elsif current_sum + list[j] < 0
            i = j + 1
            current_sum = list[j]
        end
        max_sum = current_sum if max_sum < current_sum
        
        j += 1
        # puts current_sum
    end

    max_sum
end
# list = [5, 3, -7]
# p largest_contiguous_subsum(list) # => 8
# list = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])
list = [-5, -1, -3]
p largest_contiguous_subsum(list) # => -1 (from [-1])