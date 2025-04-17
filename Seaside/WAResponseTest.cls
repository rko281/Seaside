"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAResponseTest
	instanceVariableNames: 'response'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAResponseTest guid: (GUID fromString: '{457cdcea-aa3f-4822-9910-7da7ee06c7e9}')!

WAResponseTest comment: ''!

!WAResponseTest categoriesForClass!HTTP! !

!WAResponseTest methodsFor!

assertLines: anArray	self assert: self lines equals: anArray!

contents	"Answer a string of the complete response as it is sent to the client."		self subclassResponsibility!

lines	"Answer the response as an array of lines, to be used within the tests."	| result stream |	result := OrderedCollection new.	stream := self contents readStream.	[ stream atEnd ] whileFalse: [ result add: (stream greaseUpToAll: (String with: Character cr with: Character lf)) ].	^ result asArray!

response	"Answer the response under test."	^ response!

testAttachmentWithFileName	self response attachmentWithFileName: 'foo.txt'.	self assertLines: #('HTTP/1.1 200 OK' 'Content-Disposition: attachment; filename="foo.txt"' 'Content-Length: 0' '')!

testBasicAuthentication	self response basicAuthenticationRealm: 'seaside'.	self assertLines: #('HTTP/1.1 401 Unauthorized' 'WWW-Authenticate: Basic realm="seaside"' 'Content-Length: 0' '')!

testCacheFor	self response cacheFor: (Duration days: 1 hours: 0 minutes: 0 seconds: 0).	self assert: (self response headerAt: 'Pragma') isNil.	self assert: (self response headerAt: 'Expires') notNil.	self assert: (self response headerAt: 'Cache-Control') = 'max-age=86400'!

testCacheForever	self response cacheForever.	self assert: (self response headerAt: 'Pragma') isNil.	self assert: (self response headerAt: 'Expires') notNil.	self assert: (self response headerAt: 'Cache-Control') isNil!

testCacheForeverExpiryDate	| expiry delta |	expiry := self response cacheForeverExpiryDate.	delta := expiry - DateAndTime now.	self assert: delta days > 7.	self assert: delta days < 356!

testCodes	| names codes |	names := #( authenticationFailed forbidden found gone internalError notFound notImplemented ).	codes := #( 401 403 302 410 500 404 501 ).	names with: codes do: [ :name :code | 		self response perform: name.		self assert: self response status = code.		self assert: self response message = (self response class messageForStatus: code) ]!

testContentType	self response contentType: WAMimeType textHtml.	self assert: self response contentType = WAMimeType textHtml.		self response contentType: WAMimeType imagePng.	self assert: self response contentType = WAMimeType imagePng!

testDefaultCache	self deny: (self response headers includesKey: 'Pragma').	self deny: (self response headers includesKey: 'Expires').	self deny: (self response headers includesKey: 'Cache-Control')!

testDeleteCookie	| cookie actual |	cookie := (WARequestCookie key: 'key' value: 'value')		pathUnencoded: '/highway/to/hell' encoded: '/highway/to/hell';		domain: 'hotel'		yourself.	self response deleteCookie: cookie.	self assert: self response cookies size = 1.	actual := self response cookies first.	self assert: cookie ~~ actual.	self assert: actual domain = 'hotel'.	self assert: actual path = '/highway/to/hell'!

testDocumentMimeType	self response document: 'alert("Seaside")' mimeType: 'text/javascript'.	self assertLines: #('HTTP/1.1 200 OK' 'Content-Type: text/javascript' 'Content-Length: 16' '' 'alert("Seaside")')!

testDocumentMimeTypeFileName	self response document: 'foo;bar;zork' mimeType: 'text/csv' fileName: 'table.csv'.	self assertLines: #('HTTP/1.1 200 OK' 'Content-Disposition: attachment; filename="table.csv"' 'Content-Type: text/csv' 'Content-Length: 12' '' 'foo;bar;zork')!

testDoNotCache	self response doNotCache.	self assert: (self response headerAt: 'Pragma') = 'no-cache'.	self assert: (self response headerAt: 'Expires') notNil.	self assert: (self response headerAt: 'Cache-Control') = 'no-cache, max-age=0, must-revalidate, no-store'!

testDoNotCacheExpiryDate	| expiry delta |	expiry := self response doNotCacheExpiryDate.	delta := expiry - DateAndTime now.	self assert: delta days < -7!

testHeadersAt	self assert: (self response headerAt: 'foo') isNil.	self response headerAt: 'foo' put: 'bar'.	self assert: (self response headerAt: 'foo') = 'bar'!

testHeadersAtAppend	self assert: (self response headerAt: 'foo' append: 'bar') = 'bar'.	self assert: (self response headerAt: 'foo') = 'bar'.	self assert: (self response headerAt: 'foo' append: 'zork') = 'zork'.	self assert: (self response headerAt: 'foo') = 'bar'.	self assert: (self response headers size) = 2!

testHeadersAtIfAbsent	self assert: (self response headerAt: 'foo' ifAbsent: [ 'zork' ]) = 'zork'.	self response headerAt: 'foo' put: 'bar'.	self assert: (self response headerAt: 'foo' ifAbsent: [ 'zork' ]) = 'bar'!

testHeadersAtPut	self assert: (self response headerAt: 'foo' put: 'bar') = 'bar'.	self assert: (self response headerAt: 'foo') = 'bar'.	self assert: (self response headerAt: 'foo' put: 'zork') = 'zork'.	self assert: (self response headerAt: 'foo') = 'zork'.	self assert: (self response headers size) = 1!

testHeadersRemoveAt	self response headerAt: 'foo' put: 'bar'.	self response headerAt: 'bar' put: 'baz'.	self assert: (self response removeHeaderAt: 'foo') = #('bar').	self assert: (self response removeHeaderAt: 'bar') = #('baz').	self assert: (self response headers isEmpty)!

testInlineWithFileName	self response inlineWithFileName: 'bar.txt'.	self assertLines: #('HTTP/1.1 200 OK' 'Content-Disposition: inline; filename="bar.txt"' 'Content-Length: 0' '')!

testIsCommitted	self deny: self response isCommitted.	self response contentType: 'text/html'.	self deny: self response isCommitted.	self response nextPutAll: 'Visit <a href="http://www.seaside.st">seaside.st</a>.'.	self assertLines: #('HTTP/1.1 200 OK' 'Content-Type: text/html' 'Content-Length: 53' '' 'Visit <a href="http://www.seaside.st">seaside.st</a>.')!

testMessage	self assert: self response message = 'OK'.		self response status: 404.	self assert: self response message = 'Not Found'.		self response status: 290.	self assert: self response message isNil.		self response status: 290 message: 'Seaside Rocks'.	self assert: self response message = 'Seaside Rocks'!

testRedirectTo	self response redirectTo: 'http://www.seaside.st/'.	self assertLines:  #('HTTP/1.1 302 Found' 'Location: http://www.seaside.st/' 'Content-Length: 0' '')!

testRefreshAfterLocation	self response refreshAfter: 3 seconds location: 'http://www.seaside.st/'.	self assertLines: #('HTTP/1.1 200 OK' 'Refresh: 3; http://www.seaside.st/' 'Content-Length: 0' '')!

testStatus	self assert: self response status = 200.	self response status: 404.	self assert: self response status = 404!

testStreaming	| stream |	self response notFound.		" This is a normal write stream that supports the standard WriteStream protocol. All Smalltalk dialects should support common messages such as #nextPut:, #nextPutAll:, #print:, #crlf, etc."	stream := self response stream.	stream nextPutAll: 'A long long way from home.'.	stream crlf.	stream nextPut: $!!.	stream print: 123.		self assertLines: #('HTTP/1.1 404 Not Found' 'Content-Length: 32' '' 'A long long way from home.' '!!123')!

testStrictTransportSecurity	self response strictTransportSecurity: 500 includeSubDomains: true.	self assert: (self response headerAt: 'Strict-Transport-Security') = 'max-age=500; includeSubDomains'.		self response strictTransportSecurity: 500 includeSubDomains: false.	self assert: (self response headerAt: 'Strict-Transport-Security') = 'max-age=500'! !

!WAResponseTest categoriesForMethods!
assertLines:!private! !
contents!accessing!public! !
lines!accessing!public! !
response!accessing!public! !
testAttachmentWithFileName!public!tests/conveniance! !
testBasicAuthentication!public!tests/conveniance! !
testCacheFor!public!tests/cache! !
testCacheForever!public!tests/cache! !
testCacheForeverExpiryDate!public!tests/cache! !
testCodes!public!tests/status! !
testContentType!public!tests! !
testDefaultCache!public!tests/cache! !
testDeleteCookie!public!tests/cache! !
testDocumentMimeType!public!tests/documents! !
testDocumentMimeTypeFileName!public!tests/documents! !
testDoNotCache!public!tests/cache! !
testDoNotCacheExpiryDate!public!tests/cache! !
testHeadersAt!public!tests/headers! !
testHeadersAtAppend!public!tests/headers! !
testHeadersAtIfAbsent!public!tests/headers! !
testHeadersAtPut!public!tests/headers! !
testHeadersRemoveAt!public!tests/headers! !
testInlineWithFileName!public!tests/conveniance! !
testIsCommitted!public!tests! !
testMessage!public!tests/status! !
testRedirectTo!public!tests/conveniance! !
testRefreshAfterLocation!public!tests/conveniance! !
testStatus!public!tests/status! !
testStreaming!public!tests! !
testStrictTransportSecurity!public!tests/conveniance! !
!

!WAResponseTest class methodsFor!

isAbstract	^ self name = #WAResponseTest! !

!WAResponseTest class categoriesForMethods!
isAbstract!public!testing! !
!

