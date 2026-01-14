"Filed out from Dolphin Smalltalk"!

WANotification subclass: #WARenderNotification
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARenderNotification guid: (GUID fromString: '{658eae0e-e32e-4ea2-91cc-3781ea82a411}')!

WARenderNotification comment: ''!

!WARenderNotification categoriesForClass!Seaside-Core-Exceptions! !

!WARenderNotification methodsFor!

defaultAction	^ WAUnhandledNotificationError signalWithNotification: self!

isResumable	^ false! !

!WARenderNotification categoriesForMethods!
defaultAction!public! !
isResumable!public!testing! !
!

