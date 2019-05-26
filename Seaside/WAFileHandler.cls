"Filed out from Dolphin Smalltalk 7"!

WARequestHandler subclass: #WAFileHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'default'!
WAFileHandler guid: (GUID fromString: '{cd749086-42f9-4f41-9a21-9141cf02493b}')!
WAFileHandler comment: 'Seaside serves static files using WAFileLibrary subclasses. WAFileHandler handles all requests for WALibrary files (or methods) for all applications on the Seaside server. WAFileHandler is registered with the default WADispatcher automatically.'!
!WAFileHandler categoriesForClass!Seaside-Core-Libraries! !
!WAFileHandler methodsFor!

baseUrlForLibrary	| resourceBaseUrl |	resourceBaseUrl := self resourceBaseUrl.	^ resourceBaseUrl isNil		ifTrue: [ self url ]		ifFalse: [ resourceBaseUrl copy ]!

defaultConfiguration	^ super defaultConfiguration		removeParent: WARequestHandlingConfiguration instance;		addParent: WAFileHandlerConfiguration instance;		yourself!

fileHandlerListingClass	^ self preferenceAt: #fileHandlerListingClass!

handleFiltered: aRequestContext	self responseForContext: aRequestContext!

libraries	^ WAAbstractFileLibrary libraries!

libraryAt: aSymbol ifAbsent: aBlock	^ self libraries 		detect: [ :each | each handlesFolder: aSymbol ]		ifNone: aBlock!

resourceBaseUrl	^ self preferenceAt: #resourceBaseUrl!

responseForContext: aRequestContext	| libraryClass consumer |	consumer := aRequestContext consumer.	consumer atEnd		ifTrue: [ ^ (self fileHandlerListingClass on: self context: aRequestContext) responseForLibraries ].	libraryClass := self 		libraryAt: consumer next asSymbol		ifAbsent: [ ^ aRequestContext responseGenerator notFound; respond ].	consumer atEnd		ifTrue: [			| listingClass |			listingClass := (self fileHandlerListingClass on: self context: aRequestContext).			listingClass responseForLibrary: libraryClass default ]		ifFalse: [			libraryClass handle: aRequestContext.			" won't be executed if a document is found "			aRequestContext responseGenerator				notFound;				respond ]!

useXSendfile	^ self preferenceAt: #useXSendfile!

xSendfileBaseDirectory	^ self preferenceAt: #xSendfileBaseDirectory! !
!WAFileHandler categoriesFor: #baseUrlForLibrary!accessing!public! !
!WAFileHandler categoriesFor: #defaultConfiguration!configuration!public! !
!WAFileHandler categoriesFor: #fileHandlerListingClass!configuration!public! !
!WAFileHandler categoriesFor: #handleFiltered:!handling!public! !
!WAFileHandler categoriesFor: #libraries!accessing!public! !
!WAFileHandler categoriesFor: #libraryAt:ifAbsent:!accessing!public! !
!WAFileHandler categoriesFor: #resourceBaseUrl!configuration!public! !
!WAFileHandler categoriesFor: #responseForContext:!private! !
!WAFileHandler categoriesFor: #useXSendfile!configuration!public! !
!WAFileHandler categoriesFor: #xSendfileBaseDirectory!configuration!public! !

!WAFileHandler class methodsFor!

default	default isNil ifTrue: [ default := self new ].	^ default!

default: aFileHandler	default := aFileHandler!

description	^ 'File Library'! !
!WAFileHandler class categoriesFor: #default!accessing!public! !
!WAFileHandler class categoriesFor: #default:!accessing!public! !
!WAFileHandler class categoriesFor: #description!accessing!public! !

