"Filed out from Dolphin Smalltalk 7"!

WACallback subclass: #JSPassenger
	instanceVariableNames: 'object'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSPassenger guid: (GUID fromString: '{0a52f74b-13e0-41e9-86d3-a2f8a0ed0db5}')!
JSPassenger comment: ''!
!JSPassenger categoriesForClass!Javascript-Core-Base! !
!JSPassenger methodsFor!

evaluateWithArgument: anObject	self shouldNotImplement!

isEnabledFor: aRequestContext	^ false!

isPassenger	^ true!

object	^ object!

setObject: anObject	object := anObject! !
!JSPassenger categoriesFor: #evaluateWithArgument:!evaluation!public! !
!JSPassenger categoriesFor: #isEnabledFor:!public!testing! !
!JSPassenger categoriesFor: #isPassenger!public!testing! !
!JSPassenger categoriesFor: #object!accessing!public! !
!JSPassenger categoriesFor: #setObject:!initialization!public! !

