"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WARouteVictimMock
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARouteVictimMock guid: (GUID fromString: '{4e0fd62f-93b5-4c77-a77a-2cc45cd1b7b5}')!
WARouteVictimMock comment: ''!
!WARouteVictimMock categoriesForClass!Seaside-Tests-REST-Core! !
!WARouteVictimMock methodsFor!

first: anObject	^ Array with: anObject!

first: anFirstObject second: aSecondObject	^ Array with: anFirstObject with: aSecondObject!

first: anFirstObject second: aSecondObject third: aThirdObject	^ Array with: anFirstObject with: aSecondObject with: aThirdObject!

nothing	^ Array new! !
!WARouteVictimMock categoriesFor: #first:!accessing!public! !
!WARouteVictimMock categoriesFor: #first:second:!accessing!public! !
!WARouteVictimMock categoriesFor: #first:second:third:!accessing!public! !
!WARouteVictimMock categoriesFor: #nothing!accessing!public! !

