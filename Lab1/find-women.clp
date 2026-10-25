(defrule find-women 
	(person (name $?name) (gender female)
)
	 => 
	(printout t "Woman: " $?name crlf)
)