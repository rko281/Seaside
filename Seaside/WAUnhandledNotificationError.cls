"Filed out from Dolphin Smalltalk 7"!

WAError subclass: #WAUnhandledNotificationError
	instanceVariableNames: 'notification'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAUnhandledNotificationError guid: (GUID fromString: '{4fb40a05-032d-4f5d-bf5a-c058ed01dd4b}')!
WAUnhandledNotificationError comment: 'Seaside has several Notifications that signal the desire to end the current attempt to process a request. These Notification must be handled as they are not resumable or continuable. If those Notifications are not handled, their default actions are to signal this error.'!
!WAUnhandledNotificationError categoriesForClass!Seaside-Core-Exceptions! !
!WAUnhandledNotificationError methodsFor!

notification	^ notification!

notification: aNotification	notification := aNotification! !
!WAUnhandledNotificationError categoriesFor: #notification!accessing!public! !
!WAUnhandledNotificationError categoriesFor: #notification:!accessing!public! !

!WAUnhandledNotificationError class methodsFor!

signalWithNotification: aNotification	^ self new		notification: aNotification;		signal! !
!WAUnhandledNotificationError class categoriesFor: #signalWithNotification:!public!signaling! !

