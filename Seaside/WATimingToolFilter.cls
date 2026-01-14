"Filed out from Dolphin Smalltalk"!

WARequestFilter subclass: #WATimingToolFilter
	instanceVariableNames: 'startTime previousTiming'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATimingToolFilter guid: (GUID fromString: '{5a0d370e-1f9e-4b37-840b-1916f7c9eca2}')!

WATimingToolFilter comment: ''!

!WATimingToolFilter categoriesForClass!Seaside-Development-Filter! !

!WATimingToolFilter methodsFor!

currentTiming	"Answer the running timing, or 0 if no value is available."	^ startTime isNil ifTrue: [ 0 ] ifFalse: [ Time millisecondsSince: startTime ]!

handleFiltered: aRequestContext	startTime := Time millisecondClockValue.	[ super handleFiltered: aRequestContext ]		ensure: [ previousTiming := self currentTiming ]!

previousTiming	"Answer the previous timing, or 0 if no value is available."	^ previousTiming ifNil: [ 0 ]! !

!WATimingToolFilter categoriesForMethods!
currentTiming!accessing!public! !
handleFiltered:!processing!public! !
previousTiming!accessing!public! !
!

