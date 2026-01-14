"Filed out from Dolphin Smalltalk"!

WASystemConfiguration subclass: #WAFileHandlerConfiguration
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFileHandlerConfiguration guid: (GUID fromString: '{343bf9ab-1441-4e42-a82f-35a7c9bffdfb}')!

WAFileHandlerConfiguration comment: ''!

!WAFileHandlerConfiguration categoriesForClass!Seaside-Core-Libraries! !

!WAFileHandlerConfiguration methodsFor!

describeOn: config	(config list: #fileHandlerListingClass)		beAdvanced;		options: [ self listingClasses ];		default: WAForbiddenFileHandlerListing.	(config url: #resourceBaseUrl)		group: #server;		comment: 'Sets the base URL for generated URLs.'.	(config boolean: #useXSendfile)		beAdvanced;		group: #server;		comment: 'Sets whether to use the X-Sendfile header to stream file library contents.';		default: false.	(config string: #xSendfileBaseDirectory)		beAdvanced;		group: #server;		comment: 'The directory in which the deployed file libraries are.'!

listingClasses	^ WAFileHandlerListing allSubclasses asSortedCollection: [ :a :b | a name <= b name ]!

parents	^ Array with: WARequestHandlingConfiguration instance! !

!WAFileHandlerConfiguration categoriesForMethods!
describeOn:!description!public! !
listingClasses!description!public! !
parents!ancestry!public! !
!

