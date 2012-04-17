#!/usr/local/bin/io

"Evaluate 1 + 1 and then 1 + \"one\"." println
"Is Io strongly typed or weakly typed?" println
"Support your answer with code." println

"1 + 1" println
1 + 1   println

e := try (
  1 + "one" println
)

e catch(Exception, 
  "1 + \"one\" this fails" println
) pass

"" println

"Is 0 true or false? What about the empty string? Is nil true or false? Support your answer with code." println

"0 == false" println
0 == false   println

"0 == true" println
0 == true   println

"" println

"How can you tell what slots a prototype supports?" println
Highlander := Object clone
Highlander attack := method("Attack!" println)
"Created a object highlander and print out the slots with 'slotNames'" println
Highlander slotNames println
"" println

"What is the difference between = (equals), := (colon equals), and ::= (colon colon equals)?" println
"When would you use each one?"     println
"':=' creates when doens't exists" println
"execute: 'Car := Object clone'"   println
Car := Object clone do (
  wheels ::= nil
  drive  := method('Vrooom!!!!!' println)
)

Car                                println
"execute 'Bus := Car clone'"      println
Bus := Car clone setWheels(6)
Car wheels                           println

"" println
