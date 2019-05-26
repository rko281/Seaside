"Filed out from Dolphin Smalltalk 7"!

WAError subclass: #WAChildComponentShouldNotBeSelfError
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAChildComponentShouldNotBeSelfError guid: (GUID fromString: '{cca39c4f-9702-45d8-b2bd-ec92ac7d361f}')!
WAChildComponentShouldNotBeSelfError comment: ''!
!WAChildComponentShouldNotBeSelfError categoriesForClass!Seaside-Component-Exceptions! !
!WAChildComponentShouldNotBeSelfError methodsFor!

seasidePossibleCauses	^ #(		'you included self in the return value of #children'		'You''re probably missing a return (^) somewhere.'	)! !
!WAChildComponentShouldNotBeSelfError categoriesFor: #seasidePossibleCauses!accessing!public! !

