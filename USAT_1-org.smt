(set-logic QF_UF)
(declare-fun A () Bool)
(declare-fun B () Bool)
(declare-fun C () Bool)
(declare-fun D () Bool)
(assert 
(and 
(and(=> A (and B D)) (=> (and B D) A))
(=> C B)
(not(or A B (not D)))
))
(check-sat)
(get-model)

