"Filed out from Dolphin Smalltalk"!

WARequestFilter subclass: #WADeprecatedToolFilter
	instanceVariableNames: 'notifications'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADeprecatedToolFilter guid: (GUID fromString: '{d080adb1-1e23-4464-b492-7eb1ab0f3d06}')!

WADeprecatedToolFilter comment: ''!

!WADeprecatedToolFilter categoriesForClass!Filter! !

!WADeprecatedToolFilter methodsFor!

deprecated: aNotification	"Adds a deprecated warning aNotification to the receiver. Remove old deprecation warnings that have the same message and detail text."	notifications := notifications reject: [ :each | 		(each messageText = aNotification messageText)			and: [ each details = aNotification details ] ].	notifications add: aNotification.	aNotification resume!

handleFiltered: aRequestContext 	[ super handleFiltered: aRequestContext ] 		on: GRDeprecatedApiNotification, GRPlatform current deprecationExceptionSet		do: [ :notification | self deprecated: notification ]!

initialize	super initialize.	self reset!

notifications	^ notifications!

reset	notifications := OrderedCollection new! !

!WADeprecatedToolFilter categoriesForMethods!
deprecated:!actions!public! !
handleFiltered:!processing!public! !
initialize!initialization!public! !
notifications!accessing!public! !
reset!actions!public! !
!

