require 'benchmark'

def heap_sort(array)
    max = array.size
    a = [nil] + array
    (max / 2).downto(1) do |i|
        make_heap(a, i, max)
    end

    while max > 1
        a[1], a[max] = a[max], a[1]
        max -= 1
        make_heap(a, 1, max)
    end
    a.drop(1)
end

def make_heap(array, parent, max)
    root = array[parent]
    while (child = 2 * parent) <= max
        if child < max && array[child] < array[child + 1]
            child += 1
        end
        break if root >= array[child]
        array[parent] = array[child]
        parent = child
    end
    array[parent] = root
end

array1 = []
50.times {
    array1 << rand(1000)
}
#puts heap_sort(array1)
puts Benchmark.measure{ heap_sort(array1) }