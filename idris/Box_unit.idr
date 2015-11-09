module Box
import unit

data Box = mkBox unit

b1: Box
b1 = mkBox mkUnit


unBox: Box -> unit
unBox (mkBox b) = mkUnit


