# Your Code Here

def map(array)
    new = []
    i = 0
    while i < array.length do
        new << yield(array[i])
        i += 1
    end

    return new
end

def reduce(array, start=nil)

    if start
        acc = start
        i = 0
    else
        acc = array[0]
        i = 1
    end
    while i < array.length do
        acc = yield(acc, array[i])

        i += 1
    end
    
    return acc
end