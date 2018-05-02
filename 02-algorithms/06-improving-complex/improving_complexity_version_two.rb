# Improve time complexity performance
# This method takes n arrays as input and combine them in sorted ascending  order
require 'benchmark'

def improved_two(*arrays)
    combined_array = arrays.flatten
    merge_sort(combined_array)
end
 
    
 
def merge_sort(collection)
    if collection.length <= 1
        collection
    else
        mid = (collection.length / 2).floor
        left = merge_sort(collection[0..mid - 1])
        right = merge_sort(collection[mid..collection.length])
        merge(left, right)
    end
end
    
def merge(left, right)
    if left.empty?
        right
    elsif right.empty?
        left
    elsif left.first < right.first
        [left.first] + merge(left[1..left.length], right)
    else
        [right.first] + merge(left, right[1..right.length])
    end
end

  array1 = [5, 8, 2, 560, 47, -100, 0]
  array2 = [12, 13, 14, 61, 71, 4]
  puts improved_two(array1, array2)
  puts Benchmark.measure{ improved_two(array1, array2) }