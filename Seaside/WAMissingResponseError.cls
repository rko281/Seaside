"Filed out from Dolphin Smalltalk 7"!

WAError subclass: #WAMissingResponseError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMissingResponseError guid: (GUID fromString: '{68aef47c-5348-4ffd-91dd-dd8aabc22c49}')!
WAMissingResponseError comment: 'I signal a missing response - can be caused by an attempt to use #call: or a similar method while rendering.'!
!WAMissingResponseError categoriesForClass!Seaside-RenderLoop! !
!WAMissingResponseError methodsFor!

seasidePossibleCauses	^ #(		'A Component attempted to use #call: or a similar method while rendering. Calling and answering can only be done in a callback.'	)! !
!WAMissingResponseError categoriesFor: #seasidePossibleCauses!accessing!public! !

