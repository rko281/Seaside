"Filed out from Dolphin Smalltalk 7"!

WAError subclass: #WAMissingResponseError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMissingResponseError guid: (GUID fromString: '{5597d1c3-79cd-42e8-a158-146c5e065c5a}')!
WAMissingResponseError comment: ''!
!WAMissingResponseError categoriesForClass!Seaside-RenderLoop! !
!WAMissingResponseError methodsFor!

seasidePossibleCauses	^ #(		'A Component attempted to use #call: or a similar method while rendering. Calling and answering can only be done in a callback.'	)! !
!WAMissingResponseError categoriesFor: #seasidePossibleCauses!accessing!public! !

