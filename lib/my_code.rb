require 'pry' #binding.pry

def map(array)
  result = []
  i = 0 
  while i < array.length
    result << yield(array[i])
    i += 1 
  end 
  result
end

# def map_to_negativize(source_array)
# i = 0
# new_array = []
# while i < source_array.length
# new_array << source_array[i] * -1
#   i += 1
# end
# new_array
# end 

def reduce(array, sv=nil)
  if sv
    sum = sv
    i = 0 
  else 
    sum = array[0]
    i = 1 
  end
  while i < array.length
    sum = yield(sum, array[i])
    i += 1
end
sum
end


# def reduce_to_total(source_array, starting_point=0)
#   sum = starting_point
#   i = 0
#   while i < source_array.length do
#     sum += source_array[i]
#     i += 1
#   end
#   sum
# end