"Filed out from Dolphin Smalltalk 7"!

WANotification subclass: #WAResponseNotification
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAResponseNotification guid: (GUID fromString: '{84c81ca2-b7da-4167-891f-133a42885ece}')!
WAResponseNotification comment: 'A WAResponseNotification is signaled whenever the application server wants to return a response back to the client.'!
!WAResponseNotification categoriesForClass!Seaside-Core-Exceptions! !
!WAResponseNotification methodsFor!

defaultAction	^ WAUnhandledNotificationError signalWithNotification: self!

isResumable	^ false! !
!WAResponseNotification categoriesFor: #defaultAction!public! !
!WAResponseNotification categoriesFor: #isResumable!public!testing! !

