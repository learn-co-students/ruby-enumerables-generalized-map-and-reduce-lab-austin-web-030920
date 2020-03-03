# Your Code Here

def map(source)
  result = []
  i = 0
  while i < source.length do
    result << yield(source[i])
    i += 1
  end
  result
end


def reduce(source, starting_point = nil)
  if (source[0].class == Integer)
    result = starting_point.to_i
  else
    result = !!starting_point
  end
  i = 0
  while i < source.length do
    result = yield(result, source[i])
    i += 1
  end
  result
end
