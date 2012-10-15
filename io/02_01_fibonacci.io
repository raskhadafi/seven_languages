#!/usr/local/bin/io

fib := method(n,
  count  := 0
  before := 1
  now    := 0

  while(count < n,
    temp   := before
    before := now
    now    := temp  + before
    count  := count + 1
  )

  now
)

writeln("FIBONACI")
writeln(fib(1))
writeln(fib(2))
writeln(fib(3))
