(deftemplate hardness
    (slot value)
)

(deftemplate density
    (slot value)
)

(deftemplate color
    (slot value)
)


(deffunction check-hardness (?h)
    (if (= ?h 8.5)
        then TRUE
        else FALSE)
)


(deffunction check-density (?d)
    (if (= ?d 3.72)
        then TRUE
        else FALSE)
)


(deffunction check-color (?c)
    (if (or
            (eq ?c yellow)
            (eq ?c brown)
            (eq ?c green))
        then TRUE
        else FALSE)
)


(deffunction is-chrysoberyl (?h ?d ?c)
    (if (and
            (check-hardness ?h)
            (check-density ?d)
            (check-color ?c))
        then TRUE
        else FALSE)
)


(defrule identify-chrysoberyl
    (hardness
        (value ?h))

    (density
        (value ?d))

    (color
        (value ?c))

    (test
        (is-chrysoberyl ?h ?d ?c))
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
        (not
            (is-chrysoberyl ?h ?d ?c)))
    =>
    (printout t "The gemstone is not chrysoberyl." crlf)
)