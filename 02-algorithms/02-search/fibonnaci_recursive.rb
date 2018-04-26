require 'benchmark'

def fib(n)
    if (n == 0)
      return 0
    elsif (n == 1)
      return 1
    else
      return fib(n-1) + fib(n-2)
    end
end

puts Benchmark.measure { fib(20) }

def fib_right(n)
    n <= 1 ? n : fib_right(n-1) + fib_right(n-2)
end

puts Benchmark.measure { fib_right(20) }