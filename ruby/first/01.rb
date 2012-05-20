class Array
  def first(n=0)
    n = n == 0 ? 0 : n - 1
    self[0..n]
  end
end


a = [2,34,4223]
p a.first
p a.first(2)
