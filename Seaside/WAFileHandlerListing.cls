"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAFileHandlerListing
	instanceVariableNames: 'handler context'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFileHandlerListing guid: (GUID fromString: '{93fa0836-5861-48be-aac8-40737548ddd3}')!
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

