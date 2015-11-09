module PersonTest

import list
import Person

data Person = tom | mary | ge |daryl| nil


record Person where
  constructor mkPerson
  name: String
  age: Nat
  height: Nat
  gender: bool


  tom: Person
  tom = mkPerson "Tom" 19 56 false

  mary: Person
  mary = mkPerson "Mary" 20 59 true

  ge: Person
  ge = mkPerson "Ge" 21 64 true

  daryl: Person
  daryl = mkPerson "Daryl" 19 71 false

  students: list students
  students = tom ::mary::ge::daryl::nil


  setName: Person -> String -> Person
  setName p n = record {name = n} p

  setAge: Person -> Nat -> Person
  setAge p a = record {age = a} p

  setHeight: Person -> Nat -> Person
  setHeight p h = record { height = h} p

  setGender: Person -> Nat -> Person
  setGender p f = record {gender = f} p
