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
  result = false
  if arr.empty?
  else
    a_hash = {}
    arr.each_with_index do |num,i|
      difference = n - num
      if a_hash[difference]
        result = true
      else
        a_hash[num] = i
      end
    end
  end
  return result
end

# Part 2

def hello(name)
  return("Hello, " << name)
end

def starts_with_consonant? s
  is_match = s.capitalize.match(/\A+[AEIOU]/)
  is_letter = s.match(/\A+[A-Za-z]/)
  if(s == '')
    return false
  end
  if(!is_letter)
    return false
  end
  if(is_match)
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  if(s !~ /[^01]/ && s != '')
    s = s.to_i(2)

    if(s%4 == 0)
      return true
    else
      return false
    end
  else
    return false
  end
end

# Part 3

class BookInStock
attr_reader :isbn, :price

def price=(price)
  if ((price.is_a? Numeric) && (price > 0))
    price = price.to_f
  else
    raise ArgumentError.new("Price needs to be a number greater than zero.")
  end
  @price = price
end

def isbn=(isbn)
  if isbn == ''
    raise ArgumentError.new("No ISBN number found")
  end
  @isbn = isbn
end

def initialize(isbn, price)
  self.isbn = isbn
  self.price = price
end

def price_as_string
  return "$" + sprintf("%.2f", self.price)
end

end
