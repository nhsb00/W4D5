require "byebug"

# def first_anagram?(string1, string2)
#     string1.split("").permutation.to_a.join("").include?(string2)

# end

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true




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

def second_anagram?()
end