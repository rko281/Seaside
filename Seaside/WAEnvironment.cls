"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'configuredApplicationDefaults'!
WAEnvironment guid: (GUID fromString: '{a600b641-0d41-4da0-84a8-2dcb25c4fa27}')!
WAEnvironment comment: 'WAEnvironment class	instanceVariableNames: ''configuredApplicationDefaults'''!
!WAEnvironment categoriesForClass!Seaside-Environment! !
!WAEnvironment class methodsFor!

configureApplicationDefaults	(configuredApplicationDefaults ifNil: [ false ]) ifFalse: [		WAAdmin applicationDefaults			at: #responseGenerator putClass: WAHtmlResponseGenerator.		configuredApplicationDefaults := true ]	!

initialize	self configureApplicationDefaults.	self registerDefaultRequestHandlers.	self registerDefaultComponents!

registerDefaultComponents	WAPainter allSubclasses do: [ :each |		(each class includesSelector: #initialize)			ifTrue: [ each initialize ] ]!

registerDefaultRequestHandlers	WAFileHandler default: WAFileHandler new.	WAFileHandler default 		preferenceAt: #fileHandlerListingClass		put: WAHtmlFileHandlerListing.	WAAdmin defaultDispatcher 		register: WAFileHandler default		at: 'files'.	WAAdmin defaultDispatcher 		register: WALegacyRedirectionHandler new		at: 'seaside'!

reloadApplications	WAAdmin clearAll.	self registerDefaultRequestHandlers.	self registerDefaultComponents! !
!WAEnvironment class categoriesFor: #configureApplicationDefaults!class initialization!public! !
!WAEnvironment class categoriesFor: #initialize!class initialization!public! !
!WAEnvironment class categoriesFor: #registerDefaultComponents!public!registration! !
!WAEnvironment class categoriesFor: #registerDefaultRequestHandlers!public!registration! !
!WAEnvironment class categoriesFor: #reloadApplications!public!registration! !

