"Filed out from Dolphin Smalltalk"!

WAError subclass: #WAMissingResponseError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMissingResponseError guid: (GUID fromString: '{84b8b96f-ce07-4b71-821a-86db80c6f8dd}')!

WAMissingResponseError comment: 'I signal a missing response - can be caused by an attempt to use #call: or a similar method while rendering.'!

!WAMissingResponseError categoriesForClass!Errors! !

!WAMissingResponseError methodsFor!

seasidePossibleCauses	^ #(		'A Component attempted to use #call: or a similar method while rendering. Calling and answering can only be done in a callback.'	)! !

!WAMissingResponseError categoriesForMethods!
seasidePossibleCauses!accessing!public! !
!

