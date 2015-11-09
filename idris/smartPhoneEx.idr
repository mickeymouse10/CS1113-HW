module smartPhoneEx

import smartPhone
import list
import bool
import relation
import pair


us: list smartPhone
us  = apple::nil

china: list smartPhone
china = huawei::x::len::nil


market: list smartPhone
market = apple::sam::huawei::x::len::nil


mapMarket: list Nat
mapMarket = map marketSize market

mapName: list String
mapName = map name market

mapCountry: list String
mapCountry = map country market

mapOther: list bool
mapOther = map otherAves market

aveMarketsz: pair Nat Nat
aveMarketsz = ave_rel market otherAves marketSize

aveMarkChina: pair Nat Nat
aveMarkChina = ave_rel market china marketSize

t1: pair Nat Nat
t1 = aveMarketsz

c1: pair Nat Nat
c1 = aveMarkChina
