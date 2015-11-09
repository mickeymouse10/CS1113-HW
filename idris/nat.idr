module nat

import bool
import pair
import eq
import Serialize



data nat = O | S nat


||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false



||| returns the successor of any given nat
succ: nat -> nat
succ n = S n



||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n



||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

|||return true if it is odd and false if it is even
oddb: nat -> bool
oddb n = not (evenb n)



--given a pair of natural numbers, return its sum
add: nat -> nat -> nat
add O m = m
add (S n) m = S(add n m)

||| given a pair of natural numbers, return its sum
mult: nat -> nat -> nat
mult O m = O
mult (S n) m = add (mult n m) m

fact: nat -> nat
fact O = (S O)
fact (S n') = mult (S n') (fact n')

sub: nat -> nat -> nat
sub O m = O
sub n O = n
sub (S n) (S m)= sub n m

exp: nat -> nat -> nat
exp x O = S O
exp  x (S n) = mult (exp x n) x

--Given 2 nats find if one is less than the other
lep: nat -> nat -> bool
lep O b = true
lep (S a)O = false
lep (S a)(S b)= lep a b

--Given 2 nats find if they equal each other
eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat _ _ = false
eql_nat (S a) (S b) = eql_nat a b

--given 2 nats find if a is greater than the other
gtp: nat -> nat -> bool
gtp O a = false
gtp a O = true
gtp (S a) (S b) = gtp a b

--2 nats greater or equal to each other
gep: nat -> nat -> bool
gep a O = true
gep O b = false
gep (S a) (S b)= gep a b

--2 nat greater or equal to each other
ltp: nat -> nat -> bool
ltp a O = false
ltp O b = true
ltp (S a) (S b) = ltp a b

instance eq nat where
  eql n1 n2 = eql_nat n1 n2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "s" ++ (toString n)
