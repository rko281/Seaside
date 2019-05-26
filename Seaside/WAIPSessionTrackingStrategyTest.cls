"Filed out from Dolphin Smalltalk 7"!

WAInvisibleSessionTrackingStrategyTest subclass: #WAIPSessionTrackingStrategyTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAIPSessionTrackingStrategyTest guid: (GUID fromString: '{09fcd778-bc75-4d9e-8dfe-e00c810da7c0}')!
WAIPSessionTrackingStrategyTest comment: ''!
!WAIPSessionTrackingStrategyTest categoriesForClass!Seaside-Tests-Session! !
!WAIPSessionTrackingStrategyTest methodsFor!

createRequest	^ super createRequest		setRemoteAddress: self remoteAddress;		yourself!

newStrategy	^ WAIPSessionTrackingStrategy new!

remoteAddress	^ '17.154.81.95'!

sessionId	^ self remoteAddress! !
!WAIPSessionTrackingStrategyTest categoriesFor: #createRequest!private! !
!WAIPSessionTrackingStrategyTest categoriesFor: #newStrategy!private! !
!WAIPSessionTrackingStrategyTest categoriesFor: #remoteAddress!private! !
!WAIPSessionTrackingStrategyTest categoriesFor: #sessionId!private! !

