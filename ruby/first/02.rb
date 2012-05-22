require 'benchmark'

class Array
  def first(n=0)
    each
  end
end

a = [9, 8, 7, 6, 5, 4, 3, 2, 1]

p a.first
p a.first(2)

Benchmark.bmbm do |x|
  x.report("first:")    { a.first }
  x.report("first(2):") { a.first(2) }
end
__END__
              user     system      total        real
first:    0.000000   0.000000   0.000000 (  0.000040)
first(2):  0.000000   0.000000   0.000000 (  0.000024)
