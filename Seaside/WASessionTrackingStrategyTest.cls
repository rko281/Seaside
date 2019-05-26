"Filed out from Dolphin Smalltalk 7"!

WAHandlerTrackingStrategyTest subclass: #WASessionTrackingStrategyTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASessionTrackingStrategyTest guid: (GUID fromString: '{96371dce-a09b-43b0-8de9-fc80e905cfa4}')!
WASessionTrackingStrategyTest comment: ''!
!WASessionTrackingStrategyTest categoriesForClass!Seaside-Tests-Session! !
!WASessionTrackingStrategyTest methodsFor!

assertNotFound: aRequestContext	self assert: aRequestContext response status = WAResponse statusFound.	self assert: (aRequestContext response headerAt: 'Location') greaseString = '/catspajamassc2'!

assertOk: aRequestContext	self assert: aRequestContext response status = WAResponse statusOk!

createHandlers	^ Array with: self newApplication!

newApplication	^ WARedirectingApplication new		cache: WAUnidirectionalCache new;		yourself!

newSession	^ WASession new! !
!WASessionTrackingStrategyTest categoriesFor: #assertNotFound:!private! !
!WASessionTrackingStrategyTest categoriesFor: #assertOk:!private! !
!WASessionTrackingStrategyTest categoriesFor: #createHandlers!configuration!public! !
!WASessionTrackingStrategyTest categoriesFor: #newApplication!private! !
!WASessionTrackingStrategyTest categoriesFor: #newSession!private! !

!WASessionTrackingStrategyTest class methodsFor!

isAbstract	^ self name = #WASessionTrackingStrategyTest! !
!WASessionTrackingStrategyTest class categoriesFor: #isAbstract!public!testing! !

