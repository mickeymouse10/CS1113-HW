module bool

import pair
import Serialize

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

and: bool -> bool-> bool
and true x = id x
and false x = constfalse x

or: bool-> bool-> bool
or true x = consttrue x
or false x = id x

xor: bool-> bool-> bool
xor true x = not x
xor false x = id x

nand: bool-> bool-> bool
nand true x = not x
nand false x = consttrue x


eql_bool: bool -> bool -> bool
eql_bool true true = true
eql_bool false false = true
eql_bool _ _ = false

instance Serialize bool where
  toString true = "True"
  toString false = "False"
