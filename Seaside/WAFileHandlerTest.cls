"Filed out from Dolphin Smalltalk"!

WARequestHandlerTest subclass: #WAFileHandlerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFileHandlerTest guid: (GUID fromString: '{a3df0ba1-649e-438c-8d3d-96a55704547b}')!

WAFileHandlerTest comment: ''!

!WAFileHandlerTest categoriesForClass!Libraries! !

!WAFileHandlerTest methodsFor!

assertListing: aResponse	self assert: aResponse status = 403.	self assert: aResponse contentType main = 'text'.	self assert: aResponse contentType sub = 'plain'!

assertNotExisiting: aResponse	self assert: aResponse status = 404.	self assert: aResponse contentType main = 'text'.	self assert: aResponse contentType sub = 'plain'!

newHandler	^ WAFileHandler new!

testHandleDoesNotExist	| response |	self requestContextWithUrl: '/root/files/Cheeseburger/'.	response := self responseAfter: [ handler handle: self requestContext ].	self assertNotExisiting: response.		self requestContextWithUrl: '/root/files/Cheeseburger'.	response := self responseAfter: [ handler handle: self requestContext ].	self assertNotExisiting: response.		self requestContextWithUrl: '/root/files/WAStandardFiles/cheeseburger.jpeg'.	response := self responseAfter: [ handler handle: self requestContext ].	self assertNotExisiting: response!

testHandleFileRequest	| response |	self requestContextWithUrl: '/root/files/WATestingFiles/sample.js'.	self requestContext consumer next; next.	response := self responseAfter: [ handler handle: self requestContext ].	self assert: response status = 200.	self assert: response contentType main = 'application'.	self assert: response contentType sub = 'javascript'.	self assert: response contents = WATestingFiles new sampleJs!

testHandleListing	| response |	self requestContextWithUrl: '/root/files/WATestingFiles/'.	requestContext consumer next; next.	response := self responseAfter: [ handler handle: self requestContext ].	self assertListing: response.		self requestContextWithUrl: '/root/files/WATestingFiles'.	requestContext consumer next; next.	response := self responseAfter: [ handler handle: self requestContext ].	self assertListing: response.		self requestContextWithUrl: '/root/files/'.	requestContext consumer next; next.	response := self responseAfter: [ handler handle: self requestContext ].	self assertListing: response.		self requestContextWithUrl: '/root/files'.	requestContext consumer next; next.	response := self responseAfter: [ handler handle: self requestContext ].	self assertListing: response!

testResourceBaseUrlConfigured	| actualUrl |	handler preferenceAt: #resourceBaseUrl put: (WAUrl absolute:  '/15/30').	actualUrl := WATestingFiles default urlOf: #sampleJs using: handler.	self assert: actualUrl greaseString = '/15/30/WATestingFiles/sample.js'!

testResourceBaseUrlNotConfigured	| actualUrl |	handler preferenceAt: #resourceBaseUrl put: nil.	actualUrl := WATestingFiles default urlOf: #sampleJs using: handler.	self assert: actualUrl greaseString = ('/', self handlerName, '/WATestingFiles/sample.js')! !

!WAFileHandlerTest categoriesForMethods!
assertListing:!public!testing! !
assertNotExisiting:!public!testing! !
newHandler!private! !
testHandleDoesNotExist!public!testing! !
testHandleFileRequest!public!testing! !
testHandleListing!public!testing! !
testResourceBaseUrlConfigured!public!testing! !
testResourceBaseUrlNotConfigured!public!testing! !
!

