# When done, submit this entire file to the autograder.

###################### Part 1 ##################################

def sum arr
  if arr.empty? 
    return 0
  else # we also can do .sum
    var =0;
    for x in arr
      var += x
    end
    return var
  end
end




def max_2_sum arr
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr.sort!  # arr.sort did not work. so used sorts self in placeclear
    
    return arr[arr.length-1]+arr[arr.length-2]
  end
end




def sum_to_n? arr, n
  if arr.empty?
    return false
  else
    myhash = {}
    for x in arr
      if myhash.has_key?(n-x)
        puts "#{myhash.length }"
        return true
      else
        myhash.store(x,nil)
      end
    end
    return false
  end
end





###################### Part 2 ##################################

def hello(name)
  return "Hello, "+name
  # return "Hello, #{name}"
  # return "Hello, " << name 
end



def starts_with_consonant? s
  if s.chr =~ /[b-df-hj-np-tv-z]/ || s.chr =~ /[B-DF-HJ-NP-TV-Z]/
    return true
  else
    return false
  end
end



def binary_multiple_of_4? s
  if s.to_i % 4 == 0 && s.to_s =~ /\b[01]+\b/
    return true 
  else
    return false
  end
end

###################### Part 3 ##################################


class BookInStock

  attr_accessor :isbn, :price # for getter and setter

  def initialize(i,pr)
    if i.empty? || pr<=0
      raise ArgumentError,"ISBN cannot be empty or price must be greater than 0."
    end 
    @isbn = i
    @price = pr
  end 

  def price_as_string 
    return "$%.2f" % @price
  end
end



  

