# this is the execise for https://rubymonk.com/learning/books/1-ruby-primer/problems/154-permutations

def number_shuffle(number)
  @split_number = number.to_s.split('')
  @array = []
  return unless check_length(number) == 3 || 4 #guard statement doesn't work
  calculate_permutations(number)
end

def check_length(number)
  number.to_s.length.to_i
end

def factorial(number)
  (1..number).reduce(:*) || 1
end

def calculate_number_of_permutations(number)
  factorial(check_length(number)) / factorial(0)
end

def shuffle_digits
  @split_number.shuffle.join.to_i # not a programmatic solution, a bit random
end

def calculate_permutations(number)
  while @array.count < calculate_number_of_permutations(number) do
    @array.push(shuffle_digits)
    @array.uniq!
  end
  return @array.sort!
end
