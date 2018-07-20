"Filed out from Dolphin Smalltalk 7"!

WARequestFilter subclass: #WADeprecatedToolFilter
	instanceVariableNames: 'notifications'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADeprecatedToolFilter guid: (GUID fromString: '{151944f3-552e-45d3-b5c9-2e2e197a0f23}')!
WADeprecatedToolFilter comment: ''!
!WADeprecatedToolFilter categoriesForClass!Seaside-Development-Filter! !
!WADeprecatedToolFilter methodsFor!

deprecated: aNotification	"Adds a deprecated warning aNotification to the receiver. Remove old deprecation warnings that have the same message and detail text."	notifications := notifications reject: [ :each | 		(each messageText = aNotification messageText)			and: [ each details = aNotification details ] ].	notifications add: aNotification.	aNotification resume!

handleFiltered: aRequestContext 	[ super handleFiltered: aRequestContext ] 		on: GRDeprecatedApiNotification, GRPlatform current deprecationExceptionSet		do: [ :notification | self deprecated: notification ]!

initialize	super initialize.	self reset!

notifications	^ notifications!

reset	notifications := OrderedCollection new! !
!WADeprecatedToolFilter categoriesFor: #deprecated:!actions!public! !
!WADeprecatedToolFilter categoriesFor: #handleFiltered:!processing!public! !
!WADeprecatedToolFilter categoriesFor: #initialize!initialization!public! !
!WADeprecatedToolFilter categoriesFor: #notifications!accessing!public! !
!WADeprecatedToolFilter categoriesFor: #reset!actions!public! !

