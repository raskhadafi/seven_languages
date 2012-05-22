require 'fiber'

f1 = Fiber.new do |f2|
  f2.resume Fiber.current
  while true
    puts "A"
    f2.transfer
  end
end

f2 = Fiber.new do |f1|
  f1.transfer
  while true
    puts "B"
    f1.transfer
  end
end

f1.resume f2
