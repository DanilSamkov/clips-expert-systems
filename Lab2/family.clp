(deftemplate family-relation
    (slot relation
        (allowed-values father-of mother-of parents-of))
    (slot person)
    (multislot related-persons)
)

(deftemplate family-role
    (slot person)
    (slot role
        (allowed-values father mother son))
)

(deftemplate person-gender
    (slot person)
    (slot gender
        (allowed-values male female))
)

(deffacts family-facts

    (family-relation
        (relation father-of)
        (person John)
        (related-persons Tom)
    )

    (family-relation
        (relation mother-of)
        (person John)
        (related-persons Susan)
    )

    (family-relation
        (relation parents-of)
        (person John)
        (related-persons Tom Susan)
    )

    (family-role
        (person Tom)
        (role father)
    )

    (family-role
        (person Susan)
        (role mother)
    )

    (family-role
        (person John)
        (role son)
    )

    (person-gender
        (person Tom)
        (gender male)
    )

    (person-gender
        (person Susan)
        (gender female)
    )

    (person-gender
        (person John)
        (gender male)
    )
)