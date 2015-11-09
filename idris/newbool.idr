module bool



data bool = true | false

|||There are 2 possible ways to fill in the result column
|||for a truth table for a binary Boolean function
|||and there are thus exactly 6 such functions, and no more

id: bool -> bool
id x = x

not: bool -> bool
not true = false
not _ = true

consttrue: bool -> bool
consttrue _ = true

constfalse: bool -> bool
constfalse _ = false
