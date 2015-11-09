module natTest

import bool
import pair
import nat
import Serialize


e1: nat
e1 = exp (mkPair (S(S O)) (S(S(S O))))

e2: nat
e2 = exp (mkPair (S(S(S O))) (S O))

l1: bool
l1 = lep (mkPair (S(S(S O))) (S(S O)))

l2: bool
l2 = lep (mkPair (S O) (S(S(S O))))

q1: bool
q1 = eqp (mkPair (S(S O)) (S(S O)))

q2: bool
q2 = eqp (mkPair (S O) (S(S(S O))))

g1: bool
g1 = gtp (mkPair O O)

g2: bool
g2 = gtp (mkPair (S(S(O))) (S O))

g3: bool
g3 = gtp (mkPair O (S O))

r1: bool
r1 = gep (mkPair (S(S O)) (S O))

r2: bool
r2 = gep (mkPair (S O) (S(S(O))))

r3: bool
r3 = gep (mkPair O O)

t1: bool
t1 = ltp (mkPair (S(S O)) (S(S(S O))))

t2: bool
t2 = ltp (mkPair (S(S(O))) (S O))

t3: bool
t3 = ltp (mkPair O O)
