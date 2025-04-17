"Filed out from Dolphin Smalltalk"!

WAInvisibleSessionTrackingStrategyTest subclass: #WAIPSessionTrackingStrategyTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAIPSessionTrackingStrategyTest guid: (GUID fromString: '{11ad40eb-067b-4d12-9ddf-0a67e1e59dc9}')!

WAIPSessionTrackingStrategyTest comment: ''!

!WAIPSessionTrackingStrategyTest categoriesForClass!Unclassified! !

!WAIPSessionTrackingStrategyTest methodsFor!

createRequest	^ super createRequest		setRemoteAddress: self remoteAddress;		yourself!

newStrategy	^ WAIPSessionTrackingStrategy new!

remoteAddress	^ '17.154.81.95'!

sessionId	^ self remoteAddress! !

!WAIPSessionTrackingStrategyTest categoriesForMethods!
createRequest!private! !
newStrategy!private! !
remoteAddress!private! !
sessionId!private! !
!

