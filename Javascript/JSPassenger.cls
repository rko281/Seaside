"Filed out from Dolphin Smalltalk"!

WACallback subclass: #JSPassenger
	instanceVariableNames: 'object'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSPassenger guid: (GUID fromString: '{b3108648-bbee-4527-8cc0-ec409677284e}')!

JSPassenger comment: ''!

!JSPassenger categoriesForClass!Base! !

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

