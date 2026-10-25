(deftemplate product
    (slot name (type STRING))
    (slot category (type STRING))
    (slot price (type INTEGER))
    (slot quantity (type INTEGER))
)

(deffacts products
    (product
        (name "Laptop")
        (category "Electronics")
        (price 15000)
        (quantity 10)
    )

    (product
        (name "Refrigerator")
        (category "Home appliances")
        (price 12000)
        (quantity 5)
    )

    (product
        (name "Chair")
        (category "Furniture")
        (price 800)
        (quantity 20)
    )
)