"Filed out from Dolphin Smalltalk 7"!

GRNotification subclass: #GRDeprecatedApiNotification
	instanceVariableNames: 'details'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRDeprecatedApiNotification guid: (GUID fromString: '{1d5d85fc-797b-4136-af69-72996eb6c77e}')!
GRDeprecatedApiNotification comment: 'This notification is signaled whenever a deprecated message is sent.see WAObject>>#greaseDeprecatedApi:details: '!
!GRDeprecatedApiNotification categoriesForClass!Grease-Core-Exceptions! !
!GRDeprecatedApiNotification methodsFor!

details	^ details!

details: anObject	details := anObject! !
!GRDeprecatedApiNotification categoriesFor: #details!accessing!public! !
!GRDeprecatedApiNotification categoriesFor: #details:!accessing!public! !

