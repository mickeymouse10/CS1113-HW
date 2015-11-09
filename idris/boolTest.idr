
module boolTest
import bool
import pair


b1:bool
b1 = true

b2:bool
b2 = true

b3: bool
b3 = false

b4: bool
b4 = not true

b5: bool
b5 = not b1

b6: bool
b6 = not (not b5)


a1: bool
a1 = and true true

a2:bool
a2 = and false true

or_t_t: bool
or_t_t = or true true
--true
or_t_f: bool
or_t_f = or true false
--true
or_f_t: bool
or_f_t = or false true
--true

or_f_f: bool
or_f_f = or false false
--false

xor_t_t: bool
xor_t_t = xor true true
--false
xor_t_f: bool
xor_t_f = xor true false
--true
xor_f_t: bool
xor_f_t = xor false true
--true
xor_f_f: bool
xor_f_f = xor false false
--false

nand_t_t: bool
nand_t_t = nand true true
--false
nand_t_f: bool
nand_t_f = nand true false
--true
nand_f_t: bool
nand_f_t = nand false true
--true
nand_f_f:bool
nand_f_f = nand false false
--false

o1: bool
o1 = or false false

o2: bool
o2 = or true false

n1: bool
n1 = nand true true

n2: bool
n2 = nand false true

x1: bool
x1 = xor true true

x2: bool
x2 = xor false true

x3: bool
x3 = xor false false
