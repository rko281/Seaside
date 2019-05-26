"Filed out from Dolphin Smalltalk 7"!

WANotification subclass: #WARenderNotification
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARenderNotification guid: (GUID fromString: '{e36b3b2d-85bc-4e0b-a845-c295c94147c0}')!
WARenderNotification comment: ''!
!WARenderNotification categoriesForClass!Seaside-Core-Exceptions! !
!WARenderNotification methodsFor!

defaultAction	^ WAUnhandledNotificationError signalWithNotification: self!

isResumable	^ false! !
!WARenderNotification categoriesFor: #defaultAction!public! !
!WARenderNotification categoriesFor: #isResumable!public!testing! !

