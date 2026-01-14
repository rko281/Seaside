"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAFileHandlerListing
	instanceVariableNames: 'handler context'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFileHandlerListing guid: (GUID fromString: '{0386f3e4-cf3e-4224-a762-2e2536f3b60f}')!

WAFileHandlerListing comment: ''!

!WAFileHandlerListing categoriesForClass!Seaside-Core-Libraries! !

!WAFileHandlerListing methodsFor!

initializeWithFileHandler: aFileHandler context: aRequestContext	self initialize.	handler := aFileHandler.	context := aRequestContext!

responseForLibraries	self subclassResponsibility!

responseForLibrary: aLibrary	self subclassResponsibility! !

!WAFileHandlerListing categoriesForMethods!
initializeWithFileHandler:context:!initialization!public! !
responseForLibraries!public!responding! !
responseForLibrary:!public!responding! !
!

!WAFileHandlerListing class methodsFor!

isAbstract 	^ self == WAFileHandlerListing!

on: aFileHandler context: aRequestContext	^ self basicNew initializeWithFileHandler: aFileHandler context: aRequestContext; yourself! !

!WAFileHandlerListing class categoriesForMethods!
isAbstract!public!testing! !
on:context:!instance creation!public! !
!

