module colors

import pair
import bool

data color = red | blue | green | yellow | magenta | cyan

complement: color -> color
complement red = cyan
complement blue = yellow
complement green = magenta
complement yellow = blue
complement magenta = green
complement cyan = red

additive: color -> bool
additive red = true
additive blue = true
additive green = true
additive _ = false


subtractive: color -> bool
subtractive a  = not(additive a)

complements: pair color color -> bool
complements (mkPair cyan red) = true
complements (mkPair yellow blue) = true
complements (mkPair magenta green) = true
complements (mkPair blue yellow) = true
complements (mkPair green magenta) = true
complements (mkPair red cyan) = true
complements (mkPair _ _) = false

mixink: pair color color -> color
mixink (mkPair magenta yellow) = red
mixink (mkPair cyan magenta ) = blue
mixink (mkPair cyan yellow) = green
mixink (mkPair yellow magenta) = red
mixink (mkPair magenta cyan)= blue
mixink (mkPair yellow cyan) = green

