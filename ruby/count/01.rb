require 'benchmark'

class Array
  def count
    i = 0
    each {|e| i+=1 }

    i
  end
end

a = [1, 2, 4, 5, 6, 7, 8, 9, 10]

Benchmark.bm(7) do |x|
  x.report("count:") { a.count }
end
