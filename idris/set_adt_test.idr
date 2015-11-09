module specTest

import list
import nat
import set_spec
import eq
import option


q1: set nat
q1 = (mkSet (O::(S O)::(S(S O))::(S(S(S O)))::nil))

q2: set nat
q2 = (mkSet ((S(S O))::(S(S(S O)))::(S(S(S(S O))))::nil))


--set insert
si: set nat
si = set_insert (S O) (q2)


--set remove
t: set nat
t = set_remove O q1

--set cardinality
cc: nat
cc = set_cardinality q2

--set member
mm: bool
mm = set_member O q1

mm2: bool
mm2 = set_member (S O) q2


--set union
uu: set nat
uu = set_union q1 q2

--set intersect
ii: set nat
ii = set_intersection q1 q2

--set difference
dd: set nat
dd = set_difference q1 q2

--set forall
ff: bool
ff = set_forall evenb q1


--set exists
ex: bool
ex = set_exists evenb q1

--set witness

wi: option nat
wi = set_witness evenb q1
