#O(n!)
def first_anagram?(str1, str2)

    possible = str1.split('').permutation.to_a #O(3n!)
    all_pos = possible.map do |ele| #O(n)
        ele.join('') #O(n) 
    end
    all_pos.include?(str2) # O(n)
end

# p first_anagram?('hello', 'ohell')

# TC: O(n^2)
def second_anagram?(str1, str2)
    return false if str1.length != str2.length 

    str2.each_char do |char| #O(n)
        i = str1.index(char) #O(n)
        return false if i.nil?  
        str1.slice!(i)    #O(n)
    end
    true
end

# p second_anagram?('heloo', 'ohell')
# p second_anagram?('gizmo', 'sally')
# p second_anagram?('elvis', 'lives')

# TC: O(n)
def third_anagram?(str1 , str2)
    return false if str1.length != str2.length
    str1.chars.sort == str2.chars.sort
end

# p third_anagram?('hello' , 'eollh')
# p third_anagram?('gizmo', 'sally')
# p third_anagram?('elvis', 'lives')

# def fourth_anagram?(str1, str2)
#     return false if str1.length != str2.length
#     hash1 = Hash.new(0)
#     hash2 = Hash.new(0)
#     (0...str1.length).each do |i|
#         hash1[str1[i]] += 1
#         hash2[str2[i]] += 1
#     end

#     hash1 == hash2
# end

# p fourth_anagram?('hello' , 'eollh')
# p fourth_anagram?('gizmo', 'sally')
# p fourth_anagram?('elvis', 'lives')

#TC: O(n)
def fourth_anagram?(str1, str2)
    return false if str1.length != str2.length
    hash1 = Hash.new(0)
    (0...str1.length).each do |i|
        hash1[str1[i]] += 1
    end

    (0...str2.length).each do |j|
        if !hash1[str2[j]] || hash1[str2[j]] == 0
            return false
        else
            hash1[str2[j]] -= 1
        end
    end
    true
    # hash1.values.all? {|val| val ==0}
end

p fourth_anagram?('hello' , 'eollh')
p fourth_anagram?('gizmo', 'sally')
p fourth_anagram?('elvis', 'lives')