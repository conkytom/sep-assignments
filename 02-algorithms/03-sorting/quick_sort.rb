require 'benchmark'

def quick_sort(array)
    return array if array.length <= 1

    pivot = array.last
    lesser = []
    greater = []
    sorted = []

    array.delete_at(array.index(pivot))
    array.each do |i|
        if i > pivot
            greater << i
        else
            lesser << i
        end
    end
    sorted << quick_sort(lesser)
    sorted << pivot
    sorted << quick_sort(greater)
end

array1 = []
50.times {
    array1 << rand(1000)
}
#puts quick_sort(array1)
puts Benchmark.measure{ quick_sort(array1) }
