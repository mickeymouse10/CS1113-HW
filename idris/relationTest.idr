module relationTest


import pair
import list
import bool
import relation


record Person where
  constructor mkPerson
  name: String
  age: Nat
  female: bool

pat: Person
pat = mkPerson "Pat" 21 false

tom: Person
tom = mkPerson "Tom" 50 false

mary: Person
mary = mkPerson "Mary" 12 true

ge: Person
ge = mkPerson "Ge" 20 true


people: list Person
people = pat::tom::mary::ge::nil

--This is what is under the hood
--aveAge: pair Nat Nat
--aveAge = mkPair
           --(query2 people female age plus 0)
           --(query2 people female countOne plus 0)

aveAge': pair Nat Nat
aveAge' = ave_rel people female age


t1: pair Nat Nat
t1 = aveAge

t2: pair Nat Nat
t2 = aveAge'
