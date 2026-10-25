(deftemplate hardness
    (slot value)
)

(deftemplate density
    (slot value)
)

(deftemplate color
    (slot value)
)


(defrule identify-chrysoberyl
    (hardness
        (value 8.5))

    (density
        (value 3.72))

    (color
        (value ?c))

    (test
        (or
            (eq ?c yellow)
            (eq ?c brown)
            (eq ?c green)))
    =>
    (printout t "The gemstone is chrysoberyl." crlf)
)


(defrule not-chrysoberyl
    (hardness
        (value ?h))

    (density
        (value ?d))

    (color
        (value ?c))

    (test
        (or
            (neq ?h 8.5)
            (neq ?d 3.72)
            (and
                (neq ?c yellow)
                (neq ?c brown)
                (neq ?c green))))
    =>
    (printout t "The gemstone is not chrysoberyl." crlf)
)