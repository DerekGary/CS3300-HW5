# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.sum
end

def max_2_sum arr
  if arr.empty?
    result = 0

  elsif(arr.all?(Integer))
      if arr.one?(Integer)
          result = arr.at(0)
      else    
          arr = arr.sort_by{|a| a}.reverse!
          result = (arr.at(0) + arr.at(1))
      end

  else
      puts "Array contains non-numerical values"
      result = nil    
  end

  return result
end

def sum_to_n? arr, n
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
