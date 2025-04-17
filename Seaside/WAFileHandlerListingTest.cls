"Filed out from Dolphin Smalltalk"!

WAContextTest subclass: #WAFileHandlerListingTest
	instanceVariableNames: 'handler'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFileHandlerListingTest guid: (GUID fromString: '{2ba212d4-15fa-4d2c-9cc7-3ad094c60c11}')!

WAFileHandlerListingTest comment: ''!

!WAFileHandlerListingTest categoriesForClass!Libraries! !

!WAFileHandlerListingTest methodsFor!

assertLibrariesResponse: response	self assert: (response contents 					indexOfSubCollection: self expectedLibrariesContents 					startingAt: 1) > 0!

assertLibraryResponse: response	self assert: (response contents					indexOfSubCollection: self expectedLibraryContents					startingAt: 1) > 0!

expectedLibrariesContents	^ handler libraries first name!

expectedLibraryContents	^ WATestingFiles default filenames detect: [ :each | true ]!

expectedMimeType	self subclassResponsibility!

expectedStatus	^ 200!

handlerClass	self subclassResponsibility!

testFileLibraries	| response |	handler := WAFileHandler new.	handler preferenceAt: #fileHandlerListingClass put: self handlerClass.	self requestContextWithUrl: '/i/dont/care/'.	self requestContext consumer next; next; next.	response := self responseAfter: [ handler handle: self requestContext ].	self assert: response status = self expectedStatus.	self assert: response contentType = self expectedMimeType.	self assertLibrariesResponse: response!

testFileLibrary	| response |	handler := WAFileHandler new.	handler preferenceAt: #fileHandlerListingClass put: self handlerClass.	self requestContextWithUrl: '/i/dont/care/WATestingFiles'.	self requestContext consumer next; next; next.	response := self responseAfter: [ handler handle: self requestContext ].	self assert: response status = self expectedStatus.	self assert: response contentType = self expectedMimeType.	self assertLibraryResponse: response! !

!WAFileHandlerListingTest categoriesForMethods!
assertLibrariesResponse:!public!testing! !
assertLibraryResponse:!public!testing! !
expectedLibrariesContents!public!testing! !
expectedLibraryContents!public!testing! !
expectedMimeType!public!testing! !
expectedStatus!public!testing! !
handlerClass!public!testing! !
testFileLibraries!public!testing! !
testFileLibrary!public!testing! !
!

!WAFileHandlerListingTest class methodsFor!

isAbstract	^ self name = #WAFileHandlerListingTest! !

!WAFileHandlerListingTest class categoriesForMethods!
isAbstract!public!testing! !
!

