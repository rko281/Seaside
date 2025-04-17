"Filed out from Dolphin Smalltalk"!

WARequestHandler subclass: #WAFileHandler
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'default'!

WAFileHandler guid: (GUID fromString: '{450f6204-1fdb-4a05-a7dc-9e97d05676b9}')!

WAFileHandler comment: 'Seaside serves static files using WAFileLibrary subclasses. WAFileHandler handles all requests for WALibrary files (or methods) for all applications on the Seaside server. WAFileHandler is registered with the default WADispatcher automatically.'!

!WAFileHandler categoriesForClass!Libraries! !

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

!WAFileHandler categoriesForMethods!
baseUrlForLibrary!accessing!public! !
defaultConfiguration!configuration!public! !
fileHandlerListingClass!configuration!public! !
handleFiltered:!handling!public! !
libraries!accessing!public! !
libraryAt:ifAbsent:!accessing!public! !
resourceBaseUrl!configuration!public! !
responseForContext:!private! !
useXSendfile!configuration!public! !
xSendfileBaseDirectory!configuration!public! !
!

!WAFileHandler class methodsFor!

default	default isNil ifTrue: [ default := self new ].	^ default!

default: aFileHandler	default := aFileHandler!

description	^ 'File Library'! !

!WAFileHandler class categoriesForMethods!
default!accessing!public! !
default:!accessing!public! !
description!accessing!public! !
!

