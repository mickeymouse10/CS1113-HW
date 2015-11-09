module dnaTest

import dna
import list
import pair
import bool


a: base
a = complement_base A

t:base
t = complement_base T

c:base
c = complement_base C

g: base
g = complement_base G




strand: list base
strand = A::T::C::G::nil

f: list base
f = map complement_base strand

molecule: list (pair base base)
molecule = (mkPair A T)::(mkPair T A):: (mkPair G C)::(mkPair C G):: nil

S1: list base
S1 = strand1 molecule

S2: list base
S2 = strand2 molecule

c1: list (pair base base)
c1 = complete strand

cb1: Nat
cb1 = count_base strand A
