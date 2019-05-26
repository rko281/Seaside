"Filed out from Dolphin Smalltalk 7"!

WAContextTest subclass: #WAFileHandlerListingTest
	instanceVariableNames: 'handler'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFileHandlerListingTest guid: (GUID fromString: '{ac001412-4a57-48f1-9394-b5d79f91c75d}')!
WAFileHandlerListingTest comment: ''!
!WAFileHandlerListingTest categoriesForClass!Seaside-Tests-Core-Libraries! !
!WAFileHandlerListingTest methodsFor!

assertLibrariesResponse: response	self assert: (response contents 					indexOfSubCollection: self expectedLibrariesContents 					startingAt: 1) > 0!

assertLibraryResponse: response	self assert: (response contents					indexOfSubCollection: self expectedLibraryContents					startingAt: 1) > 0!

expectedLibrariesContents	^ handler libraries first name!

expectedLibraryContents	^ WATestingFiles default filenames detect: [ :each | true ]!

expectedMimeType	self subclassResponsibility!

expectedStatus	^ 200!

handlerClass	self subclassResponsibility!

testFileLibraries	| response |	handler := WAFileHandler new.	handler preferenceAt: #fileHandlerListingClass put: self handlerClass.	self requestContextWithUrl: '/i/dont/care/'.	self requestContext consumer next; next; next.	response := self responseAfter: [ handler handle: self requestContext ].	self assert: response status = self expectedStatus.	self assert: response contentType = self expectedMimeType.	self assertLibrariesResponse: response!

testFileLibrary	| response |	handler := WAFileHandler new.	handler preferenceAt: #fileHandlerListingClass put: self handlerClass.	self requestContextWithUrl: '/i/dont/care/WATestingFiles'.	self requestContext consumer next; next; next.	response := self responseAfter: [ handler handle: self requestContext ].	self assert: response status = self expectedStatus.	self assert: response contentType = self expectedMimeType.	self assertLibraryResponse: response! !
!WAFileHandlerListingTest categoriesFor: #assertLibrariesResponse:!public!testing! !
!WAFileHandlerListingTest categoriesFor: #assertLibraryResponse:!public!testing! !
!WAFileHandlerListingTest categoriesFor: #expectedLibrariesContents!public!testing! !
!WAFileHandlerListingTest categoriesFor: #expectedLibraryContents!public!testing! !
!WAFileHandlerListingTest categoriesFor: #expectedMimeType!public!testing! !
!WAFileHandlerListingTest categoriesFor: #expectedStatus!public!testing! !
!WAFileHandlerListingTest categoriesFor: #handlerClass!public!testing! !
!WAFileHandlerListingTest categoriesFor: #testFileLibraries!public!testing! !
!WAFileHandlerListingTest categoriesFor: #testFileLibrary!public!testing! !

!WAFileHandlerListingTest class methodsFor!

isAbstract	^ self name = #WAFileHandlerListingTest! !
!WAFileHandlerListingTest class categoriesFor: #isAbstract!public!testing! !

