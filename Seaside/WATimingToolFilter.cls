"Filed out from Dolphin Smalltalk 7"!

WARequestFilter subclass: #WATimingToolFilter
	instanceVariableNames: 'startTime previousTiming'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATimingToolFilter guid: (GUID fromString: '{2f06d380-d111-483a-b7b4-97a852da5113}')!
WATimingToolFilter comment: ''!
!WATimingToolFilter categoriesForClass!Seaside-Development-Filter! !
!WATimingToolFilter methodsFor!

currentTiming	"Answer the running timing, or 0 if no value is available."	^ startTime isNil ifTrue: [ 0 ] ifFalse: [ Time millisecondsSince: startTime ]!

handleFiltered: aRequestContext	startTime := Time millisecondClockValue.	[ super handleFiltered: aRequestContext ]		ensure: [ previousTiming := self currentTiming ]!

previousTiming	"Answer the previous timing, or 0 if no value is available."	^ previousTiming ifNil: [ 0 ]! !
!WATimingToolFilter categoriesFor: #currentTiming!accessing!public! !
!WATimingToolFilter categoriesFor: #handleFiltered:!processing!public! !
!WATimingToolFilter categoriesFor: #previousTiming!accessing!public! !

