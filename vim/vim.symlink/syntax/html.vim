syn region SynFold
	\ start="\v\<%(param|link|isindex|input|hr|frame|col|br|basefont|base|area|img|meta)@!\z([a-z]+)%(\_s[^>]*[^>/])*\>"
	\ end="</\z1>"
	\ transparent fold keepend extend
	\ containedin=ALLBUT,htmlComment
