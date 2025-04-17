"Filed out from Dolphin Smalltalk"!

WAHandlerTrackingStrategyTest subclass: #WASessionTrackingStrategyTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASessionTrackingStrategyTest guid: (GUID fromString: '{8b92c55e-4ca2-4e6f-a240-0a75a576993f}')!

WASessionTrackingStrategyTest comment: ''!

!WASessionTrackingStrategyTest categoriesForClass!Unclassified! !

!WASessionTrackingStrategyTest methodsFor!

assertNotFound: aRequestContext	self assert: aRequestContext response status = WAResponse statusFound.	self assert: (aRequestContext response headerAt: 'Location') greaseString = '/catspajamassc2'!

assertOk: aRequestContext	self assert: aRequestContext response status = WAResponse statusOk!

createHandlers	^ Array with: self newApplication!

newApplication	^ WARedirectingApplication new		cache: WAUnidirectionalCache new;		yourself!

newSession	^ WASession new! !

!WASessionTrackingStrategyTest categoriesForMethods!
assertNotFound:!private! !
assertOk:!private! !
createHandlers!configuration!public! !
newApplication!private! !
newSession!private! !
!

!WASessionTrackingStrategyTest class methodsFor!

isAbstract	^ self name = #WASessionTrackingStrategyTest! !

!WASessionTrackingStrategyTest class categoriesForMethods!
isAbstract!public!testing! !
!

