"Filed out from Dolphin Smalltalk 7"!

Object subclass: #WARouteVictimMock
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARouteVictimMock guid: (GUID fromString: '{fc94ffd8-9382-4bf4-8ade-c2c9e9a3f69e}')!
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

