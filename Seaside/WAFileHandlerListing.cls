"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAFileHandlerListing
	instanceVariableNames: 'handler context'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFileHandlerListing guid: (GUID fromString: '{c330362a-d7b3-4e8d-8783-491a63808eb7}')!

WAFileHandlerListing comment: ''!

!WAFileHandlerListing categoriesForClass!Libraries! !

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

