"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAFileHandlerListing
	instanceVariableNames: 'handler context'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFileHandlerListing guid: (GUID fromString: '{9f1f1170-4bb2-468e-8891-a98324496b09}')!
WAFileHandlerListing comment: ''!
!WAFileHandlerListing categoriesForClass!Seaside-Core-Libraries! !
!WAFileHandlerListing methodsFor!

initializeWithFileHandler: aFileHandler context: aRequestContext	self initialize.	handler := aFileHandler.	context := aRequestContext!

responseForLibraries	self subclassResponsibility!

responseForLibrary: aLibrary	self subclassResponsibility! !
!WAFileHandlerListing categoriesFor: #initializeWithFileHandler:context:!initialization!public! !
!WAFileHandlerListing categoriesFor: #responseForLibraries!public!responding! !
!WAFileHandlerListing categoriesFor: #responseForLibrary:!public!responding! !

!WAFileHandlerListing class methodsFor!

on: aFileHandler context: aRequestContext	^ self basicNew initializeWithFileHandler: aFileHandler context: aRequestContext; yourself! !
!WAFileHandlerListing class categoriesFor: #on:context:!instance creation!public! !

