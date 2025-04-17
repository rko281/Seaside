"Filed out from Dolphin Smalltalk"!

WAInvisibleSessionTrackingStrategyTest subclass: #WASslSessionTrackingStrategyTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASslSessionTrackingStrategyTest guid: (GUID fromString: '{8bf332b2-8816-45fa-9797-99ba4cda147c}')!

WASslSessionTrackingStrategyTest comment: ''!

!WASslSessionTrackingStrategyTest categoriesForClass!Unclassified! !

!WASslSessionTrackingStrategyTest methodsFor!

createRequest	^ super createRequest		setSslSessionId: self sslSessionId;		yourself!

newStrategy	^ WASslSessionTrackingStrategy new!

sessionId	^ self sslSessionId!

sslSessionId	^ 'F42BAA17C89C707060E6BF5D251CC7E8832117056C1A8B0883387CA0EDDB52CF'! !

!WASslSessionTrackingStrategyTest categoriesForMethods!
createRequest!private! !
newStrategy!private! !
sessionId!private! !
sslSessionId!private! !
!

