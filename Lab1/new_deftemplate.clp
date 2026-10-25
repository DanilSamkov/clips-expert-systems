(deftemplate person
	(multislot name)
	(slot age (type INTEGER))
	(slot gender (allowed-values male female))
)

(deffacts people 
	(person (name Danil Samkov) (age 18) (gender male) ) 
	(person (name Sasha Ivanova) (age 21) (gender female) ) 
	(person (name Vika Chorna) (age 25) (gender female) ) 
)