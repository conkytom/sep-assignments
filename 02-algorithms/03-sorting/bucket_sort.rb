require 'benchmark'

def bucket_sort(array)
    bucket_size = 5
    min = array.min
    max = array.max
    bucket_count = ((max - min) / bucket_size.floor + 1)

    buckets = Array.new(bucket_count)

    (0...buckets.length).each do |i|
        buckets[i] = []
    end

    (0...array.length).each do |i|
        bucket_num = ((array[i] - min) / bucket_size).floor
        buckets[bucket_num] << (array[i])
    end

    array = []
    (0..buckets.length - 1).each do |i|
      buckets[i] = insertion_sort(buckets[i])
      buckets[i].each do |value|
        array.push(value)
      end
    end
  
    array
  end
  
  def insertion_sort(collection)
    sorted_array = [collection.delete_at(0)]
  
    until collection.length == 0
      insert_value = collection.shift
      i = 0
      until i == sorted_array.length || insert_value < sorted_array[i]
        i += 1
      end
      sorted_array.insert(i, insert_value)
    end
  
    sorted_array.reject { |i| i.nil? }
  end
  
  

array1 = []
50.times {
    array1 << rand(1000)
}
#puts bucket_sort(array1)
puts Benchmark.measure{ bucket_sort(array1) }