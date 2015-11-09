module list

import nat
import pair
import option
import bool
import ite
import eq
import Serialize



-- the date type

data list a = nil | (::) a (list a)


length : list a -> nat
length nil = O
length (h::t) = S (length t)


--append as an infix operator ++
(++): list a -> list a -> list a
(++) nil l2 = l2
(++) (h::t) l2 = h::(t++l2)

--map a function over the elements of a list
map: (a -> b) -> list a -> list b
map f nil = nil
map f (h::t) = (f h)::(map f t)


filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h::t) = ite (f h)
                      (h::(filter f t))
                          (filter f t)

foldr: (a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)





member: (eq a) => a -> list a -> bool
member v nil = false
member v (h::t) = ite (eql v h) true
                      (member v t)


instance (eq a) => eq (list a) where
eql_list: (eq a) => (list a) -> (list a) -> bool
eql_list nil nil = true
eql_list (h::t) nil = false
eql_list nil (h::t) = false
eql_list (h1::t1) (h2::t2) = and (eql h1 h2) (eql t1 t2)

toStringList: (Serialize a) => list a -> String
toStringList nil = ""
toStringList (h::nil) = (toString h)
toStringList (h::t) = (toString h) ++ ", "++ (toStringList t)

instance (Serialize a) => Serialize (list a) where
  toString l = "[" ++ (toStringList l) ++ "]"

  --use curly braces instead of brackets for sets
