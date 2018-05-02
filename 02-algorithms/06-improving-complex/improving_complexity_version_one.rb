# Optimize this code.
# This method takes n arrays as input and combine them in sorted ascending  order
require 'benchmark'

def improved_one(*arrays)
    combined_array = []
 
    arrays.each do |array|
        combined_array += array
    end

    sorted_array = [combined_array.pop]
 
    for val in combined_array
      i = 0
      while i < sorted_array.length
        if val <= sorted_array[i]
          sorted_array.insert(i, val)
          break
        elsif i == sorted_array.length - 1
          sorted_array << val
          break
        end
        i+=1
      end
    end
 
    # Return the sorted array
    sorted_array
  end

  array1 = [5, 8, 2, 560, 47, -100, 0]
  array2 = [12, 13, 14, 61, 71, 4]
  puts improved_one(array1, array2)
  puts Benchmark.measure{ improved_one(array1, array2) }