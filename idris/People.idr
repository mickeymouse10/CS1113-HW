module People

import bool
import Person
import list



tom:Person
tom = mkPerson "Tom" 19 56 false

mary: Person
mary = mkPerson "Mary" 20 59 true

ge: Person
ge = mkPerson "Ge" 21 64 true

daryl: Person
daryl = mkPerson "Daryl" 19 71 false


people: list Person
people = tom ::mary::ge::daryl::nil

mapAge: list Person -> list Nat
mapAge nil = nil
mapAge (h::t) = (age h)::(mapAge t)


women: list Person
women = filter gender people

wAges: list Nat
wAges = map age women

years: Nat
years = list.foldr plus 0 wAges
