require "byebug"

# def first_anagram?(string1, string2)
#     string1.split("").permutation.to_a.join("").include?(string2)

# end






# def permutations(array) # O(n!) but why!? exercise left to the reader :) 
#   return [array] if array.length <= 1 # O(1)
#   debugger
#   first = array.shift # O(n)
#     debugger
#   perms = permutations(array) #O(n!) ?
#   total = []

#   perms.each do |perm| # O(n^2)
#     (0..perm.length).each do |i| # O(n)
#         debugger
#       total << perm[0 ... i] + [first] + perm[i .. -1] # O(n) + O(1) + O(n) => 2n
#     end
#   end
#   total
# end

# # arr1 = [1,2]
# arr2 = [1,2,3]

# # p permutations(arr1) # [[1,2], [2,1]]
# p permutations(arr2) # [[1, 2, 3], [2, 1, 3], [2, 3, 1], [1, 3, 2], [3, 1, 2], [3, 2, 1]] = 6  = 3! 

def second_anagram?(string1, string2) # n^2
    chars1 = string1.split("")
    chars2 = string2.split("")

    chars1.each do |char|
        index = chars2.find_index(char)
        return false if index.nil?
        chars2.delete_at(index)
    end
    chars2.empty?
end


def third_anagrams?(string1, string2) # n + nlogn + n = 2n + nlogn => nlogn
    string1.split("").sort.join("") == string2.split("").sort.join("")
end

def fourth_anagrams?(string1, string2) # 3n => n
    hash = Hash.new(0)
    string1.each_char do |char|
        hash[char] += 1
    end

    string2.each_char do |char|
        hash[char] -= 1
    end

    hash.all? {|k,v| v == 0}
end





p fourth_anagrams?("gizmo", "sally")    #=> false
p fourth_anagrams?("elvis", "lives")    #=> true