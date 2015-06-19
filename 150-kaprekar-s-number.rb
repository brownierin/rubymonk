# this is the exercise for https://rubymonk.com/learning/books/1-ruby-primer/problems/150-kaprekar-s-number

def kaprekar?(k)
  @k = k
  square_of_k = k*k
  array = square_of_k.to_s.split('')
  check_if_kaprekar_number(array)
end

def check_if_kaprekar_number(array)
  @k == calculate_number(array)
end

def calculate_number(array)
  calculate_left_digits(array) + calculate_right_digits(array)
end

def calculate_left_digits(array)
  array[0..calculate_array_values(array)-1].join.to_i
end

def calculate_right_digits(array)
  array[calculate_array_values(array)..-1].join.to_i
end

def calculate_array_values(array)
  (array.size / 2)
end
