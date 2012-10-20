#!/usr/local/bin/io

Number setSlot(
  "coreDivision",
  Number getSlot("/")
)

Number setSlot("/",
  method(i,
    if(i == 0,
      return 0
    ) else (
      return(
        self coreDivision(i)
      )
    )
  )
)

(3 / 0) println
(3 / 3) println
