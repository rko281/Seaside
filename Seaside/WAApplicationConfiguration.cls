"Filed out from Dolphin Smalltalk"!

WASystemConfiguration subclass: #WAApplicationConfiguration
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAApplicationConfiguration guid: (GUID fromString: '{70e2ed9d-5050-4bf8-bbaa-cac46b792c8a}')!

WAApplicationConfiguration comment: 'WAApplicationConfiguration defines attributes required by WAApplication. All applications should include this configuration (this is done by default for new applications).See #addAttributes: for details on provided attributes.'!

!WAApplicationConfiguration categoriesForClass!Base! !

!WAApplicationConfiguration methodsFor!

continuationClasses	^ (WASessionContinuation allSubclasses reject: [ :each | each isAbstract ])		asSortedCollection: [ :a :b | a name <= b name ]!

describeOn: config	(config classBindingCollection: #libraries)		options: [ self libraryClasses ].	(config classBinding: #initialContinuationClass)		beAdvanced;		options: [ self continuationClasses ];		default: WANullSessionContinuation.	(config string: #mimeType)		beAdvanced;		label: 'MIME Type';		comment: 'The media type of HTML documents reported to the browser.';		default: 'text/html'.	(config url: #resourceBaseUrl)		group: #server;		comment: 'Sets the base URL for URLS generated with #resourceUrl:'.	(config boolean: #sessionAllowTermination)		comment: 'Whether sessions allows a special HTTP request to terminate the process currently running in the session. This is used during development and should be disabled for deployment.';		default: false.	(config classBinding: #sessionClass)		comment: 'Sessions in this application will be instances of this class.';		options: [ self sessionClasses ];		default: WASession.	(config listOfClasses: #trackingStrategy)		comment: 'How sessions and document handlers should be tracked.';		options: [ self trackingStrategyClasses ];		default: WAQueryFieldHandlerTrackingStrategy new!

libraryClasses	^ WAAbstractFileLibrary libraries asSortedCollection: [ :a :b | a name <= b name ]!

parents	"Skip WARegistryConfiguration because we override #trackingStrategy. It doesn't work otherwise."	^ Array		with: WARequestHandlingConfiguration instance		with: WACacheConfiguration instance!

sessionClasses	^ WASession withAllSubclasses asSortedCollection: [ :a :b | a name <= b name ]!

trackingStrategyClasses	^ (WAHandlerTrackingStrategy allSubclasses reject: [ :each | each isAbstract ])		asSortedCollection: [ :a :b | a name <= b name ]! !

!WAApplicationConfiguration categoriesForMethods!
continuationClasses!description!public! !
describeOn:!description!public! !
libraryClasses!description!public! !
parents!ancestry!public! !
sessionClasses!description!public! !
trackingStrategyClasses!description!public! !
!

