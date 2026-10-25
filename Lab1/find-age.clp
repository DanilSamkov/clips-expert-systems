(defrule find-by-age
	(person (name $?name) (age 25) )
	=>
	(printout t "Person aged 25: " $?name crlf)
)