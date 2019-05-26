"Filed out from Dolphin Smalltalk 7"!

WARequestFilter subclass: #WATimingToolFilter
	instanceVariableNames: 'startTime previousTiming'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATimingToolFilter guid: (GUID fromString: '{984624e3-e82e-44c6-a86a-c8af6058d8c4}')!
WATimingToolFilter comment: ''!
!WATimingToolFilter categoriesForClass!Seaside-Development-Filter! !
!WATimingToolFilter methodsFor!

currentTiming	"Answer the running timing, or 0 if no value is available."	^ startTime isNil ifTrue: [ 0 ] ifFalse: [ Time millisecondsSince: startTime ]!

handleFiltered: aRequestContext	startTime := Time millisecondClockValue.	[ super handleFiltered: aRequestContext ]		ensure: [ previousTiming := self currentTiming ]!

previousTiming	"Answer the previous timing, or 0 if no value is available."	^ previousTiming ifNil: [ 0 ]! !
!WATimingToolFilter categoriesFor: #currentTiming!accessing!public! !
!WATimingToolFilter categoriesFor: #handleFiltered:!processing!public! !
!WATimingToolFilter categoriesFor: #previousTiming!accessing!public! !

