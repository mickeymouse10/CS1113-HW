module Person

||| A record type that is equivalent to:
||| (data Person = mkPerson String nat)
||| but where we give names to fields.
||| A person has a name and an age in
||| years.

record Person where
  constructor mkPerson
  name: String
  age: Nat
  height: Nat
  gender: bool


setName: Person -> String -> Person
setName p n = record {name = n} p

setAge: Person -> Nat -> Person
setAge p a = record {age = a} p

setHeight: Person -> Nat -> Person
setHeight p h = record { height = h} p

setGender: Person -> Nat -> Person
setGender p f = record {gender = f} p
