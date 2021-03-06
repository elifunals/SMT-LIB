(declare-const p11 Bool)
(declare-const p12 Bool)
(declare-const p13 Bool)
(declare-const p14 Bool)
(declare-const p21 Bool)
(declare-const p22 Bool)
(declare-const p23 Bool)
(declare-const p24 Bool)
(declare-const p31 Bool)
(declare-const p32 Bool)
(declare-const p33 Bool)
(declare-const p34 Bool)
(declare-const p41 Bool)
(declare-const p42 Bool)
(declare-const p43 Bool)
(declare-const p44 Bool)

(assert (or p11  p12  p13 p14))
(assert (or p21  p22  p23 p24))
(assert (or p31  p32  p33 p34))
(assert (or p41  p42  p43 p44))

(assert (not (or(and p12 p11)(and p13 p11)(and p13 p12)(and p14 p11)(and p14 p12)(and p14 p13))))
(assert (not (or(and p22 p21)(and p23 p21)(and p23 p22)(and p24 p21)(and p24 p22)(and p24 p23))))
(assert (not (or(and p32 p31)(and p33 p31)(and p33 p32)(and p34 p31)(and p34 p32)(and p34 p33))))
(assert (not (or(and p42 p41)(and p43 p41)(and p43 p42)(and p44 p41)(and p44 p42)(and p44 p43))))

(assert (not (or(and p21 p11)(and p31 p11)(and p31 p21)(and p41 p11)(and p41 p21)(and p41 p31))))
(assert (not (or(and p22 p12)(and p32 p12)(and p32 p22)(and p42 p12)(and p42 p22)(and p42 p32))))
(assert (not (or(and p23 p13)(and p33 p13)(and p33 p23)(and p43 p13)(and p43 p23)(and p43 p33))))
(assert (not (or(and p24 p14)(and p34 p14)(and p34 p24)(and p44 p14)(and p44 p24)(and p44 p34))))

(assert (not (or (and p11 p22) (and p11 p33) (and p11 p44) (and p22 p33) (and p22 p44) (and p33 p44))))
(assert (not (or (and p12 p23) (and p12 p34) (and p23 p34))))
(assert (not (or (and p13 p24))))
(assert (not (or (and p21 p32) (and p21 p43) (and p32 p43))))
(assert (not (or (and p31 p42))))
(assert (not (or (and p22 p11) (and p33 p11) (and p44 p11) (and p33 p22) (and p44 p22) (and p44 p33))))
(assert (not (or (and p23 p12) (and p34 p12) (and p34 p23))))
(assert (not (or (and p24 p13))))
(assert (not (or (and p32 p21) (and p43 p21) (and p43 p32))))
(assert (not (or (and p42 p31))))

(check-sat)
(get-model)

