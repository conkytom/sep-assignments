# Improve space complexity
# This method takes n arrays as input and combine them in sorted ascending  order
require 'benchmark'

def improved_three(*arrays)
    arrays.flatten.sort!
end

array1 = [5, 8, 2, 560, 47, -100, 0]
array2 = [12, 13, 14, 61, 71, 4]
puts improved_three(array1, array2)
puts Benchmark.measure{ improved_three(array1, array2) }