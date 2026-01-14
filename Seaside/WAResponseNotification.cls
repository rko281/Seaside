"Filed out from Dolphin Smalltalk"!

WANotification subclass: #WAResponseNotification
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAResponseNotification guid: (GUID fromString: '{a896edc8-84c5-468d-9678-30719667abdc}')!

WAResponseNotification comment: 'A WAResponseNotification is signaled whenever the application server wants to return a response back to the client.'!

!WAResponseNotification categoriesForClass!Seaside-Core-Exceptions! !

!WAResponseNotification methodsFor!

defaultAction	^ WAUnhandledNotificationError signalWithNotification: self!

isResumable	^ false! !

!WAResponseNotification categoriesForMethods!
defaultAction!public! !
isResumable!public!testing! !
!

