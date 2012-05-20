class Array
  def count
    i = 0
    each {|e| i+=1 }

    i
  end
end

a = [1, 2, 4]
p a.count
