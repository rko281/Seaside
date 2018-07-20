"Filed out from Dolphin Smalltalk 7"!

WASystemConfiguration subclass: #WARegistryConfiguration
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARegistryConfiguration guid: (GUID fromString: '{70f76c2a-9480-489c-91ad-5c94a4778eaa}')!
WARegistryConfiguration comment: ''!
!WARegistryConfiguration categoriesForClass!Seaside-Core-RequestHandling! !
!WARegistryConfiguration methodsFor!

describeOn: config	(config list: #trackingStrategy)		comment: 'How handlers should be tracked.';		options: [ Array with: WAQueryFieldHandlerTrackingStrategy new ];		default: WAQueryFieldHandlerTrackingStrategy new!

parents	^ Array with: WARequestHandlingConfiguration instance! !
!WARegistryConfiguration categoriesFor: #describeOn:!description!public! !
!WARegistryConfiguration categoriesFor: #parents!ancestry!public! !

