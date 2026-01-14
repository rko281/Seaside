"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'configuredApplicationDefaults'!

WAEnvironment guid: (GUID fromString: '{6db4e60c-c3ef-41c8-968a-69d1c6480eba}')!

WAEnvironment comment: 'I am a utility class used to initialize and provide a default environment.'!

!WAEnvironment categoriesForClass!Seaside-Environment! !

!WAEnvironment class methodsFor!

configureApplicationDefaults	(configuredApplicationDefaults ifNil: [ false ]) ifFalse: [		WAAdmin applicationDefaults			at: #responseGenerator putClass: WAHtmlResponseGenerator.		configuredApplicationDefaults := true ]!

initialize	self configureApplicationDefaults.	self registerDefaultRequestHandlers.	self registerDefaultComponents!

registerDefaultComponents	WAPainter allSubclasses do: [ :each |		(each class includesSelector: #initialize)			ifTrue: [ each initialize ] ]!

registerDefaultRequestHandlers	WAFileHandler default: WAFileHandler new.	WAFileHandler default 		preferenceAt: #fileHandlerListingClass		put: WAHtmlFileHandlerListing.	WAAdmin defaultDispatcher 		register: WAFileHandler default		at: 'files'.	WAAdmin defaultDispatcher 		register: WALegacyRedirectionHandler new		at: 'seaside'!

reloadApplications	WAAdmin clearAll.	self registerDefaultRequestHandlers.	self registerDefaultComponents! !

!WAEnvironment class categoriesForMethods!
configureApplicationDefaults!class initialization!public! !
initialize!class initialization!public! !
registerDefaultComponents!public!registration! !
registerDefaultRequestHandlers!public!registration! !
reloadApplications!public!registration! !
!

