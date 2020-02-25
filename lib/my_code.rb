require 'pry' #binding.pry

def map(array)
  i = 0 
  new = []
    while i < array.length
    new << yield(array[i])
    i += 1
    end
    new
end


def reduce(array, sv=nil)
  i = 0
  if sv 
    ttl = sv
    i = 0 
  else 
    ttl = array[0]
    i = 1 
  end
    while i < array.length
    ttl = yield(ttl, array[i])
    i += 1
  end
  ttl
end 

# reduce([1,2,3]1) do |x, y|
# x + y 
# end



























# def map(array)
#   result = []
#   i = 0 
#   while i < array.length
#     result << yield(array[i])
#     i += 1 
#   end 
#   result
# end

# def reduce(array, sv=nil)
#   if sv
#     sum = sv
#     i = 0 
#   else 
#     sum = array[0]
#     i = 1 
#   end
#   while i < array.length
#     sum = yield(sum, array[i])
#     i += 1
# end
# sum
# end

