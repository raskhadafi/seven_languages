#!/usr/local/bin/io

fib := method(n, count, before, now,
  if(count == nil,
    count  := 0
  )

  if(before == nil,
    before := 1
  )

  if(now == nil,
    now := 0
  )

  if(count < n,
    temp   := before
    before := now
    now    := temp  + before
    count  := count + 1
    writeln(now)
    fib(n, count, before, now)
  )
)

writeln("FIBONACI RECURSIVE")
writeln("Calculate fibonacci")
fib(1)
writeln("Calculate fibonacci")
fib(2)
writeln("Calculate fibonacci")
fib(3)
writeln("Calculate fibonacci")
fib(8)
