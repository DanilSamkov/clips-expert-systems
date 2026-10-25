(deftemplate payment
    (slot method)
)

(deftemplate vacation
    (slot type)
)


(deffunction ask-question (?question $?allowed-values)

    (printout t ?question)

    (bind ?answer
        (string-to-field (readline)))

    (if (lexemep ?answer)
        then
        (bind ?answer (lowcase ?answer))
    )

    (while
        (not (member$ ?answer ?allowed-values))
        do

        (printout t
            "Incorrect value. "
            ?question)

        (bind ?answer
            (string-to-field (readline)))

        (if (lexemep ?answer)
            then
            (bind ?answer (lowcase ?answer))
        )
    )

    ?answer
)


(defrule ask-payment
    (declare (salience 30))

    (not (payment (method ?)))
    =>
    (bind ?answer
        (ask-question
            "Choose payment method (cash/check/account): "
            cash check account))

    (assert
        (payment
            (method ?answer)))
)


(defrule ask-vacation
    (declare (salience 20))

    (payment (method ?))
    (not (vacation (type ?)))
    =>
    (bind ?answer
        (ask-question
            "Choose vacation type (sea/ski): "
            sea ski))

    (assert
        (vacation
            (type ?answer)))
)


(defrule sea-cash
    (payment (method cash))
    (vacation (type sea))
    =>
    (printout t
        "Recommended destination: Odesa."
        crlf
        "Transport: car."
        crlf
        "Approximate cost from Sumy: 1620 UAH."
        crlf)
)


(defrule sea-check
    (payment (method check))
    (vacation (type sea))
    =>
    (printout t
        "Recommended destination: Odesa."
        crlf
        "Transport: bus."
        crlf
        "Approximate cost from Sumy: 1700 UAH."
        crlf)
)


(defrule sea-account
    (payment (method account))
    (vacation (type sea))
    =>
    (printout t
        "Recommended destination: Zatoka."
        crlf
        "Transport: bus via Odesa."
        crlf
        "Approximate cost from Sumy: 2300 UAH."
        crlf)
)


(defrule ski-cash
    (payment (method cash))
    (vacation (type ski))
    =>
    (printout t
        "Recommended destination: Slavske."
        crlf
        "Transport: train."
        crlf
        "Approximate cost from Sumy: 440 UAH."
        crlf)
)


(defrule ski-check
    (payment (method check))
    (vacation (type ski))
    =>
    (printout t
        "Recommended destination: Slavske."
        crlf
        "Transport: bus via Lviv."
        crlf
        "Approximate cost from Sumy: 2123 UAH."
        crlf)
)


(defrule ski-account
    (payment (method account))
    (vacation (type ski))
    =>
    (printout t
        "Recommended destination: Bukovel."
        crlf
        "Transport: bus."
        crlf
        "Approximate cost from Sumy: 2800 UAH."
        crlf)
)