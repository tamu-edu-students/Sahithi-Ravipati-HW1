# frozen_string_literal: true

# Part 1

def sum(arr)
  sum = arr.sum {|v| v} 
  return sum
end

def max_2_sum(arr)
  if arr.empty?
    return 0
  end 
  return arr.max(2).sum
end

def sum_to_n?(arr, number)
  for i in 0...arr.size 
    for j in i+1...arr.size
      if arr.at(i) + arr.at(j) == number
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, "+name
end

def starts_with_consonant?(string)
  if /^[^aeiouAEIOU\W]/i.match(string) == nil
    return false
  else
    return true
  end
end

def binary_multiple_of_4?(string)
  if string.match?(/[^01]/) or string.empty?
    return false
  end

  num = string.to_i(2)

  if num%4 == 0
    return true
  else 
    return false
  end 

end

# Part 3

# Object representing a book
class BookInStock
  
  def initialize(isbn,price)
    raise ArgumentError if price<=0 or ! (isbn.is_a? String) or isbn.empty?
    @isbn = isbn
    @price = price
  end

  def isbn
    @isbn
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def price
    @price
  end

  def price=(price)
    @price = price
  end

  def price_as_string
    "$%0.2f" % [@price]
  end
end
