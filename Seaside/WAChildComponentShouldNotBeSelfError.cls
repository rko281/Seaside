"Filed out from Dolphin Smalltalk"!

WAError subclass: #WAChildComponentShouldNotBeSelfError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAChildComponentShouldNotBeSelfError guid: (GUID fromString: '{554bfe31-68a9-4d85-90a1-3b3b0a5fe071}')!

WAChildComponentShouldNotBeSelfError comment: ''!

!WAChildComponentShouldNotBeSelfError categoriesForClass!Seaside-Component-Exceptions! !

!WAChildComponentShouldNotBeSelfError methodsFor!

seasidePossibleCauses	^ #(		'you included self in the return value of #children'		'You''re probably missing a return (^) somewhere.'	)! !

!WAChildComponentShouldNotBeSelfError categoriesForMethods!
seasidePossibleCauses!accessing!public! !
!

