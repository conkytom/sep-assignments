def binary_search(array, value, low=0, high=(array.length - 1))
    mid = (low + high) / 2
    if low <= high
        if array[mid] > value
            binary_search(array, value, low, mid - 1)
            high = mid - 1
        elsif array[mid] < value
            binary_search(array, value, mid + 1, high)
        elsif array[mid] === value
            return mid
        end
    else
        return "Value not found"
    end
end

list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
puts binary_search(list, 9)