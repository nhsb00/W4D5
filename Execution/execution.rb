require "byebug"

# def my_min(list) #n^2
#     list.each_with_index do |num1, i1|
#         found_smaller = false
#         list.each_with_index do |num2, i2|
#             found_smaller = true if num2 < num1
#         end
#         return num1 unless found_smaller
#     end
# end

# # def my_min(list) # linear
# #     smallest = list.first
# #     list.each do |num1|
# #         if num1 < smallest
# #             smallest = num1
# #         end
# #     end
# #     smallest
# # end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

def largest_contiguous_subsum(arr) # n^2
    subs = []
    (0...arr.length).each do |start_i|
        (start_i...arr.length).each do |end_i|
            subs << arr[start_i..end_i]
        end
    end

    subs.map { |sub| sub.inject(:+) }.max
end

def largest_contiguous_subsum_2(arr)
    debugger
    ls = arr.first
    cs = 0
    debugger
    (0...arr.length).each do |i|
        debugger
        cs = 0 if cs < 0
        cs += arr[i]
        ls = cs if cs > ls
        
    end
    debugger
    ls
end
   
list = [5, 3, -7]
p largest_contiguous_subsum_2(list) # => 8

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum_2(list) # => 8 (from [7, -6, 7])

list = [-5, -1, -3]
p largest_contiguous_subsum_2(list) # => -1 (from [-1])
# possible sub-sums
# [5]           # => 5
# [5, 3]        # => 8 --> we want this one
# [5, 3, -7]    # => 1
# [3]           # => 3
# [3, -7]       # => -4
# [-7]          # => -7