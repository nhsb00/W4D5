require "byebug"

def my_min(list) #n^2
    list.each_with_index do |num1, i1|
        found_smaller = false
        list.each_with_index do |num2, i2|
            found_smaller = true if num2 < num1
        end
        return num1 unless found_smaller
    end
end

# def my_min(list) # linear
#     smallest = list.first
#     list.each do |num1|
#         if num1 < smallest
#             smallest = num1
#         end
#     end
#     smallest
# end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5


