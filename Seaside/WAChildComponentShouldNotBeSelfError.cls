"Filed out from Dolphin Smalltalk"!

WAError subclass: #WAChildComponentShouldNotBeSelfError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAChildComponentShouldNotBeSelfError guid: (GUID fromString: '{6082d723-00e8-47b1-a8b2-109244a137f6}')!

WAChildComponentShouldNotBeSelfError comment: ''!

!WAChildComponentShouldNotBeSelfError categoriesForClass!Exceptions! !

!WAChildComponentShouldNotBeSelfError methodsFor!

seasidePossibleCauses	^ #(		'you included self in the return value of #children'		'You''re probably missing a return (^) somewhere.'	)! !

!WAChildComponentShouldNotBeSelfError categoriesForMethods!
seasidePossibleCauses!accessing!public! !
!

