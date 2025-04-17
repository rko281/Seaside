"Filed out from Dolphin Smalltalk"!

WARequestFilter subclass: #WATimingToolFilter
	instanceVariableNames: 'startTime previousTiming'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATimingToolFilter guid: (GUID fromString: '{2ed0a884-11fe-4201-b03f-058ff1972c4e}')!

WATimingToolFilter comment: ''!

!WATimingToolFilter categoriesForClass!Filter! !

!WATimingToolFilter methodsFor!

currentTiming	"Answer the running timing, or 0 if no value is available."	^ startTime isNil ifTrue: [ 0 ] ifFalse: [ Time millisecondsSince: startTime ]!

handleFiltered: aRequestContext	startTime := Time millisecondClockValue.	[ super handleFiltered: aRequestContext ]		ensure: [ previousTiming := self currentTiming ]!

previousTiming	"Answer the previous timing, or 0 if no value is available."	^ previousTiming ifNil: [ 0 ]! !

!WATimingToolFilter categoriesForMethods!
currentTiming!accessing!public! !
handleFiltered:!processing!public! !
previousTiming!accessing!public! !
!

