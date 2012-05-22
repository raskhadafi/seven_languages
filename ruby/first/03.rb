class Array
  def count(n=0)
    i = 0
    each do |e|
      if n!=0
        i+=1 if e == n
      else
        i+=1
      end
    end

    i
  end

  EmptyArray = []

  def first(n=nil)
    values = []
    i = 1

    each do |e|
      # break if e == nil
      values << e
      break if !(i < (n || 0))
      i += 1
    end

    return nil if values == EmptyArray && n == nil

    values
  end

  # def drop(n)
  #   dropped = []
  #   i = 0

  #   each do |e|
  #     if i < n
  #      dropped << e
  #      e.delete
  #      i += 1
  #     end
  #   end

  #   dropped
  # end
end

puts 'count:'
a = [1, 2, 4]
p a.count
p a.count(2)
puts 'first:'
p [3, 5].first
p [3, 5, 6].first(2)
p [3, 5, 6, 5, 6, 7].first(4)
p [3, 5, 6, 5, 6, 7].first(2)
p [].first
p [].first(2)
puts 'drop:'
a = [3, 5, 6, 5, 6, 7]
p a.drop(2)
p a

