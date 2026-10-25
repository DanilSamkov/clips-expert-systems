(deftemplate person
	(slot name)
	(slot age)
	(slot gender)
)

(deffacts people 
	(person (name Danil) (age 18) (gender male) ) 
	(person (name Sasha) (age 21) (gender female) ) 
	(person (name Vika) (age 25) (gender female) ) 
)