module listTest

import nat
import list
import bool
import eq
import Serialize



l2: list nat
l2 = (O::(S O)::(S(S O))::(S(S(S(S O))))::nil)

s:String
s = toString l2
