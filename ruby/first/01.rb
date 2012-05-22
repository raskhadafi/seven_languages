require 'benchmark'

class Array
  def first(n=nil)
    return nil if n == nil && self == []

    n = (n || 0) == 0 ? 0 : n - 1

    self[0..n]
  end
end


a = [9, 8, 7, 6, 5, 4, 3, 2, 1]

p a.first
p a.first(2)
p [].first
p [].first(2)

Benchmark.bmbm do |x|
  x.report("first:")    { a.first }
  x.report("first(2):") { a.first(2) }
end
