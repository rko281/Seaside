"Filed out from Dolphin Smalltalk"!

WARequestFilter subclass: #WADeprecatedToolFilter
	instanceVariableNames: 'notifications'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADeprecatedToolFilter guid: (GUID fromString: '{ebfcc739-f1cd-48d7-9c4c-ce0a8be9f0d6}')!

WADeprecatedToolFilter comment: ''!

!WADeprecatedToolFilter categoriesForClass!Seaside-Development-Filter! !

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

