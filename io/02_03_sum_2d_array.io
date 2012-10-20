#!/usr/local/bin/io

values := list(
  list(1, 2),
  list(0, 3),
  list(2, 4),
  list(nil, "haha")
)

count := method(array,
  sum    := 0
  values := array flatten

  values foreach(i, v,
    if(v type == "Number",
      sum := sum + v
    )
  )

  sum
)

writeln("Count all numbers of a two dimensional array/list")

"Result: "    print
count(values) print
"\n"          print
