module Box

import eq
import Serialize


data Box t = mkBox t
--Box becomes a type constructor and gives you back a compound

unBox: Box t -> t
unBox (mkBox b) = b

--polymorphism helps you not repeat yourself

eql_box: (eq a) => Box a -> Box a -> bool
eql_box (mkBox v1) (mkBox v2) = eql v1 v2

instance (eq a) => eq (Box a) where
  eql (mkBox v1) (mkBox v2) = eql_box v1 v2

instance (Serialize a) => Serialize (Box a) where
  toString (mkBox b) = "(" ++ toString b ++ ", )"
