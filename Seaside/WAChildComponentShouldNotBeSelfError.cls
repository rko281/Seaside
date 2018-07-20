"Filed out from Dolphin Smalltalk 7"!

WAError subclass: #WAChildComponentShouldNotBeSelfError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAChildComponentShouldNotBeSelfError guid: (GUID fromString: '{58d6a91b-406a-44dd-98d2-9b02a82328e1}')!
WAChildComponentShouldNotBeSelfError comment: ''!
!WAChildComponentShouldNotBeSelfError categoriesForClass!Seaside-Component-Exceptions! !
!WAChildComponentShouldNotBeSelfError methodsFor!

seasidePossibleCauses	^ #(		'you included self in the return value of #children'		'You''re probably missing a return (^) somewhere.'	)! !
!WAChildComponentShouldNotBeSelfError categoriesFor: #seasidePossibleCauses!accessing!public! !

