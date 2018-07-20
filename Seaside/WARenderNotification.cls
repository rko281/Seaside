"Filed out from Dolphin Smalltalk 7"!

WANotification subclass: #WARenderNotification
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARenderNotification guid: (GUID fromString: '{35e832a4-ec46-4aae-99b3-ef9ed5b5f15c}')!
WARenderNotification comment: ''!
!WARenderNotification categoriesForClass!Seaside-Core-Exceptions! !
!WARenderNotification methodsFor!

defaultAction	^ WAUnhandledNotificationError signalWithNotification: self!

isResumable	^ false! !
!WARenderNotification categoriesFor: #defaultAction!public! !
!WARenderNotification categoriesFor: #isResumable!public!testing! !

