﻿"Filed out from Dolphin Smalltalk"!

WAError subclass: #WAUnhandledNotificationError
	instanceVariableNames: 'notification'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUnhandledNotificationError guid: (GUID fromString: '{0cfc2e78-e24c-4b84-a822-fcfb09545db4}')!

WAUnhandledNotificationError comment: 'Seaside has several Notifications that signal the desire to end the current attempt to process a request. These Notification must be handled as they are not resumable or continuable. If those Notifications are not handled, their default actions are to signal this error.'!

!WAUnhandledNotificationError categoriesForClass!Exceptions! !

!WAUnhandledNotificationError methodsFor!

notification	^ notification!

notification: aNotification	notification := aNotification! !

!WAUnhandledNotificationError categoriesForMethods!
notification!accessing!public! !
notification:!accessing!public! !
!

!WAUnhandledNotificationError class methodsFor!

signalWithNotification: aNotification	^ self new		notification: aNotification;		signal! !

!WAUnhandledNotificationError class categoriesForMethods!
signalWithNotification:!public!signaling! !
!

