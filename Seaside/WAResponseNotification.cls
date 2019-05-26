"Filed out from Dolphin Smalltalk 7"!

WANotification subclass: #WAResponseNotification
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAResponseNotification guid: (GUID fromString: '{2d4002dd-3a36-4a47-b0be-53d599dae07a}')!
WAResponseNotification comment: 'A WAResponseNotification is signaled whenever the application server wants to return a response back to the client.'!
!WAResponseNotification categoriesForClass!Seaside-Core-Exceptions! !
!WAResponseNotification methodsFor!

defaultAction	^ WAUnhandledNotificationError signalWithNotification: self!

isResumable	^ false! !
!WAResponseNotification categoriesFor: #defaultAction!public! !
!WAResponseNotification categoriesFor: #isResumable!public!testing! !

