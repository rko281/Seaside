"Filed out from Dolphin Smalltalk"!

WASystemConfiguration subclass: #WARegistryConfiguration
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARegistryConfiguration guid: (GUID fromString: '{753a0a8a-0d30-49e7-b644-ae0b7e50bc61}')!

WARegistryConfiguration comment: ''!

!WARegistryConfiguration categoriesForClass!Seaside-Core-RequestHandling! !

!WARegistryConfiguration methodsFor!

describeOn: config	(config list: #trackingStrategy)		comment: 'How handlers should be tracked.';		options: [ Array with: WAQueryFieldHandlerTrackingStrategy new ];		default: WAQueryFieldHandlerTrackingStrategy new!

parents	^ Array with: WARequestHandlingConfiguration instance! !

!WARegistryConfiguration categoriesForMethods!
describeOn:!description!public! !
parents!ancestry!public! !
!

