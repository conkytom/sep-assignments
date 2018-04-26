def binary_search(array, value)
    low = 0
    high = array.length - 1

    while low <= high
        mid = (low + high) >> 1
        if array[mid] > value
            high = mid - 1
        elsif array[mid] < value
            low = mid + 1
        else
            return mid
        end
    end
    
    return "Value not found"
end

list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
puts binary_search(list, 9)