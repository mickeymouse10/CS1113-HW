module Box
import bool
import unit

data Box = mkBox bool

b1: Box
b1 = mkBox true

b2: Box
b2 = mkBox false

unBox: Box -> bool
unBox (mkBox b) = b

notUnBox: Box -> bool
notUnBox (mkBox true) = false
notUnBox (mkBox _) = true
