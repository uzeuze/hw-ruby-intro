# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject 0, :+
end

def max_2_sum arr
  arr.sort.last(2).inject 0, :+
end

def sum_to_n? arr, n
    return false if arr.empty?
    arr.combination(2).any? {|x, y| x + y == n }

end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
   !!(s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
end

def binary_multiple_of_4? s
 !!(s.to_i(2) % 4 == 0 if s =~ /^[0-1]+$/)
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize isbn, price
    raise ArgumentError.new("Invalid ISBN or Price") if isbn.empty? || price <= 0 
    @isbn = isbn
    @price = price
  end

  def price_as_string
    sprintf("$%.2f", @price)
  end
  
end
