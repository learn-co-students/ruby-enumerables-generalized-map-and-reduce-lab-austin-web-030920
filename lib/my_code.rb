def map(source)
    new_array = []
    i = 0
    while i < source.length
        new_array << yield(source[i])

        i += 1
    end
    new_array
end

def reduce(source, start = nil)
    if start
        result = start
        i = 0
    else 
        result = source[0]
        i = 1
    end 
    
    while i < source.length
        result = yield(result, source[i])

        i += 1
    end
    result
end
