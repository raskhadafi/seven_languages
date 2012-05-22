class Array
  def count(*n)
    i = 0

    each do |e|
      unless n.empty?
        i+=1 if e == n.first
      else
        i+=1
      end
    end

    i
  end

  def first(n=nil)
    return [] if n == 0

    values = []
    i = 1

    each do |e|
      return e if n == nil || n == 1
      values << e
      break unless (i < (n || 0))
      i += 1
    end

    return nil if values.empty? && n == nil

    values
  end
end

puts 'count:'
a = [9, 8, 7, 6, 5, 4, 3, 2, 1]
p a.count
p a.count(2)
puts 'first:'
p [3, 5].first
p [3, 5].first(1)
p [3, 5, 6].first(6)
p [3, 5, 6, 5, 6, 7].first(4)
p [3, 5, 6, 5, 6, 7].first(2)
p [3, 5, 6, 5, 6, 7].first(0)
p [].first
p [].first(2)
# puts 'drop:'
# a = [3, 5, 6, 5, 6, 7]
# p a.drop(2)
# p a

# Benchmark.bmbm do |x|
#   x.report("first:")    { a.first }
#   x.report("first(2):") { a.first(2) }
# end
