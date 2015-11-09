import set
import nat
import eq
import bool
import list




s0: set nat
s0 = new_set

s1: set nat
s1 = set_insert (S O) s0

s2: set nat
s2 = set_insert (S O) s1

s3: set nat
s3 = set_insert (S(S O)) s2

same: bool
same = eql s3 s3
