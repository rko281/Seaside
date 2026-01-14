"Filed out from Dolphin Smalltalk"!

WAError subclass: #WAMissingResponseError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMissingResponseError guid: (GUID fromString: '{e9659849-f144-47e9-b7cf-24a4e03b9f31}')!

WAMissingResponseError comment: 'I signal a missing response - can be caused by an attempt to use #call: or a similar method while rendering.'!

!WAMissingResponseError categoriesForClass!Seaside-RenderLoop-Errors! !

!WAMissingResponseError methodsFor!

seasidePossibleCauses	^ #(		'A Component attempted to use #call: or a similar method while rendering. Calling and answering can only be done in a callback.'	)! !

!WAMissingResponseError categoriesForMethods!
seasidePossibleCauses!accessing!public! !
!

