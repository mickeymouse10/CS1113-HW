module bool

import pair

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
--consttrue true = true
--consttrue false = true
consttrue _ = true


constfalse: bool -> bool
--constfalse true = false
--constfalse false = false
constfalse _ = false

andp: pair bool bool -> bool
andp (mkPair true true) = true
andp  (mkPair _ _) = false

orp: pair bool bool -> bool
orp (mkPair false false) = false
orp (mkPair _ _)= true

nandp: pair bool bool -> bool
nandp (mkPair true true)= false
nandp (mkPair _ _)= true

xorp: pair bool bool -> bool
xorp (mkPair true true) = false
xorp (mkPair false false)= false
xorp (mkPair _ _) = true




o1: bool
o1 = orp (mkPair false false)

o2: bool
o2 = orp (mkPair true false)

n1: bool
n1 = nandp (mkPair true true)

n2: bool
n2 = nandp (mkPair false true)

x1: bool
x1 = xorp (mkPair true true)

x2: bool
x2 = xorp (mkPair false true)

x3: bool
x3 = xorp (mkPair false false)

pand: bool-> bool-> bool
pand true x = id x
pand false x = constfalse x

por: bool-> bool-> bool
por true x = consttrue x
por false x = id x

pxor: bool-> bool-> bool
pxor true x = not x
pxor false x = id x

pnand: bool-> bool-> bool
pnand true x = not x
pnand false x = consttrue x
