# this is the exercise for https://rubymonk.com/learning/books/1-ruby-primer/problems/150-kaprekar-s-number

def kaprekar?(k)
  square_of_k = k*k
  @digits = square_of_k.to_s.split('')
  k == kaprekar_sum
end

private

def kaprekar_sum
  calculate_left_digits + calculate_right_digits
end

def calculate_left_digits
  @digits[0..calculate_array_values-1].join.to_i
end

def calculate_right_digits
  @digits[calculate_array_values..-1].join.to_i
end

def calculate_array_values
  @digits.size / 2
end
