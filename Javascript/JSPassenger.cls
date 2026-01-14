"Filed out from Dolphin Smalltalk"!

WACallback subclass: #JSPassenger
	instanceVariableNames: 'object'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSPassenger guid: (GUID fromString: '{f8151305-13b2-499c-bdd8-c270825e3cd1}')!

JSPassenger comment: ''!

!JSPassenger categoriesForClass!Javascript-Core-Base! !

!JSPassenger methodsFor!

evaluateWithArgument: anObject	self shouldNotImplement!

isEnabledFor: aRequestContext	^ false!

isPassenger	^ true!

object	^ object!

setObject: anObject	object := anObject! !

!JSPassenger categoriesForMethods!
evaluateWithArgument:!evaluation!public! !
isEnabledFor:!public!testing! !
isPassenger!public!testing! !
object!accessing!public! !
setObject:!initialization!public! !
!

