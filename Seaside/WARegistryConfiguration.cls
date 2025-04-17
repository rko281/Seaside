"Filed out from Dolphin Smalltalk"!

WASystemConfiguration subclass: #WARegistryConfiguration
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARegistryConfiguration guid: (GUID fromString: '{43a621ab-ed0c-406e-a8da-2e3bda666288}')!

WARegistryConfiguration comment: ''!

!WARegistryConfiguration categoriesForClass!RequestHandling! !

!WARegistryConfiguration methodsFor!

describeOn: config	(config list: #trackingStrategy)		comment: 'How handlers should be tracked.';		options: [ Array with: WAQueryFieldHandlerTrackingStrategy new ];		default: WAQueryFieldHandlerTrackingStrategy new!

parents	^ Array with: WARequestHandlingConfiguration instance! !

!WARegistryConfiguration categoriesForMethods!
describeOn:!description!public! !
parents!ancestry!public! !
!

