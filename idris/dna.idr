module dna

import list
import pair
import bool
import ite




data base = A | T | C | G

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base C = G
complement_base G = C

base_pair: base -> (pair base base)
base_pair A = (mkPair A T)
base_pair T = (mkPair T A)
base_pair C = (mkPair C G)
base_pair G = (mkPair G C)


complement_strand: list base -> list base
complement_strand nil = nil
complement_strand (h::t) = map complement_base (h::t)

strand1: list (pair base base) -> list base
strand1 nil = nil
strand1 (mkPair h1 h2::t) = h1::(strand1 t)


strand2: list (pair base base)-> list base
strand2 nil = nil
strand2 (mkPair h1 h2::t) = h2::(strand2 t)

complete: list base -> list (pair base base)
complete nil = nil
complete (h::t) = map base_pair (h::t)

break: list(pair base base) -> bool -> list base
break nil x = nil
break (mkPair h1 h2::t) id = ite id (h1::(break t id)) (h2::(break t id))

change: base -> base -> Nat
change A A = 1
change T T = 1
change G G = 1
change C C = 1
change _ _ = 0


count_base: list base -> base -> Nat
count_base l b = list.foldr plus 0 (map (change b) l)
