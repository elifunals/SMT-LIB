(set-logic QF_UF)
(declare-const A Bool)
(declare-const B Bool)
(declare-const C Bool)
(declare-const D Bool)
(assert 
(and 
(or A B (not C))
(or B C D)
(or (not A) B D)
(or A (not B) (not D))
))
(check-sat)
(get-model)

