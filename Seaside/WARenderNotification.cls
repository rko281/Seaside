"Filed out from Dolphin Smalltalk"!

WANotification subclass: #WARenderNotification
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARenderNotification guid: (GUID fromString: '{040a1cde-eea0-4f64-94ab-ff00bdd99434}')!

WARenderNotification comment: ''!

!WARenderNotification categoriesForClass!Exceptions! !

!WARenderNotification methodsFor!

defaultAction	^ WAUnhandledNotificationError signalWithNotification: self!

isResumable	^ false! !

!WARenderNotification categoriesForMethods!
defaultAction!public! !
isResumable!public!testing! !
!

