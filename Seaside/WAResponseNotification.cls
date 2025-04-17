"Filed out from Dolphin Smalltalk"!

WANotification subclass: #WAResponseNotification
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAResponseNotification guid: (GUID fromString: '{460ddcfb-83ad-40dd-883c-13782b08cbe3}')!

WAResponseNotification comment: 'A WAResponseNotification is signaled whenever the application server wants to return a response back to the client.'!

!WAResponseNotification categoriesForClass!Exceptions! !

!WAResponseNotification methodsFor!

defaultAction	^ WAUnhandledNotificationError signalWithNotification: self!

isResumable	^ false! !

!WAResponseNotification categoriesForMethods!
defaultAction!public! !
isResumable!public!testing! !
!

