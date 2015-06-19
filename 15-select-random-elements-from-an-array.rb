def random_select(array, n)
  final_arr = Array.new
  array.shuffle.select {|x| final_arr << x if final_arr.count < n}
end

# allan's solution

# def random_select(array, n)
#   n.times do
#     while ns.length <= n - 1
#       get_element(array, rand(n + 1))
#     end
#   end
#   @ns
# end

# def ns
#   @ns ||= []
# end

# def get_element(array, index)
#   @new_n = array[index]
#   @ns << @new_n
# end

#their solution
# def random_select(array, n)
#   result = []
#   n.times do
#     result << array[rand(array.length)]
#   end
#   result
# end
