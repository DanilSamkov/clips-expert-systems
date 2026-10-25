(defrule print-father-relation
    (declare (salience 90))
    (family-relation
        (relation father-of)
        (person ?child)
        (related-persons ?father))
    =>
    (printout t "The father of " ?child " is " ?father "." crlf)
)

(defrule print-mother-relation
    (declare (salience 80))
    (family-relation
        (relation mother-of)
        (person ?child)
        (related-persons ?mother))
    =>
    (printout t "The mother of " ?child " is " ?mother "." crlf)
)

(defrule print-parents-relation
    (declare (salience 70))
    (family-relation
        (relation parents-of)
        (person ?child)
        (related-persons ?father ?mother))
    =>
    (printout t "The parents of " ?child " are " ?father " and " ?mother "." crlf)
)

(defrule print-father-role
    (declare (salience 60))
    (family-role
        (person ?person)
        (role father))
    =>
    (printout t ?person " is a father." crlf)
)

(defrule print-mother-role
    (declare (salience 50))
    (family-role
        (person ?person)
        (role mother))
    =>
    (printout t ?person " is a mother." crlf)
)

(defrule print-son-role
    (declare (salience 40))
    (family-role
        (person ?person)
        (role son))
    =>
    (printout t ?person " is a son." crlf)
)

(defrule print-male-tom
    (declare (salience 30))
    (person-gender
        (person Tom)
        (gender male))
    =>
    (printout t "Tom is a male." crlf)
)

(defrule print-female
    (declare (salience 20))
    (person-gender
        (person ?person)
        (gender female))
    =>
    (printout t ?person " is a female." crlf)
)

(defrule print-male-john
    (declare (salience 10))
    (person-gender
        (person John)
        (gender male))
    =>
    (printout t "John is a male." crlf)
)