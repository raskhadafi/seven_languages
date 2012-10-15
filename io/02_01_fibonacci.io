#!/usr/local/bin/io

fib := method(n,
  writeln("Calculate fibonacci")
  count  := 0
  before := 1
  now    := 0

  while(count < n,
    temp   := before
    before := now
    now    := temp  + before
    count  := count + 1
    writeln(now)
  )

  now
)

writeln("FIBONACI")
fib(1)
fib(2)
fib(3)
fib(8)
