"Filed out from Dolphin Smalltalk 7"!

WASystemConfiguration subclass: #WARegistryConfiguration
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARegistryConfiguration guid: (GUID fromString: '{81652dc0-3d93-4f72-8836-17b4dad697cf}')!
WARegistryConfiguration comment: ''!
!WARegistryConfiguration categoriesForClass!Seaside-Core-RequestHandling! !
!WARegistryConfiguration methodsFor!

describeOn: config	(config list: #trackingStrategy)		comment: 'How handlers should be tracked.';		options: [ Array with: WAQueryFieldHandlerTrackingStrategy new ];		default: WAQueryFieldHandlerTrackingStrategy new!

parents	^ Array with: WARequestHandlingConfiguration instance! !
!WARegistryConfiguration categoriesFor: #describeOn:!description!public! !
!WARegistryConfiguration categoriesFor: #parents!ancestry!public! !

