module smartPhone

import bool
import list
import pair
import relation



|||Data of companies in the Smartphone industry. Date is name of the company
||| country company was created and size of the smartphone industryin percentages
||| and whether the company sells additional electronic devices(true=yes false=no)


record smartPhone where
  constructor mkCompany
  name: String
  country: String
  marketSize: Nat
  otherAves: bool
  china: bool

apple: smartPhone
apple = mkCompany "Apple" "USA" 14 true false

sam: smartPhone
sam = mkCompany "Samsung" "South Korea" 22 true false

huawei: smartPhone
huawei = mkCompany "Huawei" "China" 9 true true

x: smartPhone
x = mkCompany "Xiaomi" "China" 6 true true

len: smartPhone
len = mkCompany "Lenovo" "China" 5 true true

setName: smartPhone -> String -> smartPhone
setName p n = record {name = n} p

setCountry: smartPhone -> String -> smartPhone
setCountry p c = record {country = c} p

setmarketSize: smartPhone -> Nat -> smartPhone
setmarketSize p m = record { marketSize = m} p

setOther: smartPhone -> bool -> smartPhone
setOther p o = record { otherAves = o} p
