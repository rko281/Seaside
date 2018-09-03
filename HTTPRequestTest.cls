"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #HTTPRequestTest
	instanceVariableNames: 'request'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPRequestTest guid: (GUID fromString: '{111ddab9-b8a7-4bd3-848c-05f3d984717a}')!
HTTPRequestTest comment: ''!
!HTTPRequestTest categoriesForClass!Unclassified! !
!HTTPRequestTest methodsFor!

basicGet
	| requestStream |
	requestStream := SwazooStream on: String new.
	requestStream
		nextPutLine: 'GET / HTTP/1.1';
		nextPutLine: 'Host: foo.com';
		crlf.
	^HTTPRequest readFrom: (SwazooStream on: requestStream writeBuffer contents)!

basicGetHTTP10
	| requestStream |
	requestStream := SwazooStream on: String new.
	requestStream
		nextPutLine: 'GET / HTTP/1.0';
		crlf.
	^HTTPRequest readFrom: (SwazooStream on: requestStream writeBuffer contents)!

basicGetHTTP10Keepalive
	| requestStream |
	requestStream := SwazooStream on: String new.
	requestStream
		nextPutLine: 'GET / HTTP/1.0';
		nextPutLine: 'Connection: Keep-Alive';
		crlf.
	^HTTPRequest readFrom: (SwazooStream on: requestStream writeBuffer contents)!

basicHead
	| requestStream |
	requestStream := SwazooStream on: String new.
	requestStream
		nextPutLine: 'HEAD / HTTP/1.1';
		nextPutLine: 'Host: foo.com';
		crlf.
	^HTTPRequest readFrom: (SwazooStream on: requestStream writeBuffer contents)!

crlfOn: aStream 
	aStream
		nextPut: Character cr;
		nextPut: Character lf!

fullGet
	| requestStream |
	requestStream := SwazooStream on: String new.
	requestStream
		nextPutLine: 'GET /aaa/bbb/ccc.html?foo=bar&baz=quux HTTP/1.1';
		nextPutLine: 'Connection: Keep-Alive';
		nextPutLine: 'User-Agent: Mozilla/4.72 [en] (X11; I; Linux 2.3.51 i686)';
		nextPutLine: 'Host: foo.com:8888';
		nextPutLine: 'Referer: http://www.bar.com/takeMeThere.html';
		crlf.
	^HTTPRequest readFrom: (SwazooStream on: requestStream writeBuffer contents)!

getMultiValueHeader
	| requestStream |
	requestStream := SwazooStream on: String new.
	requestStream
		nextPutLine: 'GET /aaa/bbb/ccc.html?foo=bar&baz=quux HTTP/1.1';
		nextPutLine: 'Content-Type: multipart/form-data; boundary= --boundary';
		crlf.
	^HTTPRequest readFrom: (SwazooStream on: requestStream writeBuffer contents)!

portedGet
	| requestStream |
	requestStream := SwazooStream on: String new.
	requestStream
		nextPutLine: 'GET / HTTP/1.1';
		nextPutLine: 'Host: foo.com:8888';
		crlf.
	^HTTPRequest readFrom: (SwazooStream on: requestStream writeBuffer contents)!

test10ConnectionClose
	request := self basicGetHTTP10.
	self assert: request wantsConnectionClose!

test10KeepAliveConnectionClose
	request := self basicGetHTTP10Keepalive.
	self deny: request wantsConnectionClose!

testBasicGet
	request := self basicGet.
	self assert: request isGet.
	self assert: request isHttp11.
	self deny: request isHead.
	self deny: request isPost.
	self deny: request isPut!

testBasicGetHost
	request := self basicGet.
	self assert: request host = 'foo.com'!

testBasicGetHTTP10
	request := self basicGetHTTP10.
	self assert: request isGet.
	self assert: request isHttp10.
	self deny: request isHead.
	self deny: request isPost.
	self deny: request isPut!

testBasicGetPort
	request := self basicGet.
	self assert: request port = 80!

testBasicHead
	request := self basicHead.
	self assert: request isHead.
	self deny: request isGet.
	self deny: request isPost.
	self deny: request isPut!

testConnection
	request := self fullGet.
	self assert: request connection = 'Keep-Alive'!

testGetMultiValueHeader
	| header |
	request := self getMultiValueHeader.
	header := request headerAt: 'Content-Type' ifAbsent: [nil].
	self assert: header mediaType = 'multipart/form-data'.
	self assert: (header transferCodings at: 'boundary') = '--boundary'.
	self assert: header valuesAsString = 'multipart/form-data boundary=--boundary'.

" 'Content-Type: multipart/form-data; boundary= --boundary'; "!

testHeaderAtIfPresent
	request := self basicGet.
	self assert: (request headers 
				fieldOfClass: HTTPIfRangeField
				ifPresent: [:header | header == (request headers fieldOfClass: HTTPIfRangeField)]
				ifAbsent: [true]).
	self assert: (request headers 
				fieldOfClass: HTTPHostField
				ifPresent: [:header | header == (request headers fieldOfClass: HTTPHostField)]
				ifAbsent: [false])!

testMissingContentType
	| requestStream result |
	requestStream := SwazooStream on: String new.
	requestStream
		nextPutLine: 'POST /foobar HTTP/1.0';
		nextPutLine: 'Host: foo.com';
"	      nextPutLine: 'Content-Type: text/plain'. <-- this is missing!! - and should be for this test"
		nextPutLine: 'Content-Length: 12';
		crlf;
		nextPutLine: 'Hello, World'.
	result := SpExceptionContext 
		for: [(HTTPRequest readFrom: (SwazooStream on: requestStream writeBuffer contents)) 
				ensureFullRead] "because of defered post data parsing"
		on: SpError
		do: [:ex | ex].
	self assert: result class == SwazooHTTPPostError.
	^self!

testNo11ConnectionClose
	request := self basicGet.
	self deny: request wantsConnectionClose!

testNoEqualsQueries
	"The last assert here used to check that 'request queryAt: 'WSDL'' is nil, but a test for an empty string is more consistent with query argument formats."

	| requestStream |
	requestStream := SwazooStream on: String new.
	requestStream
		nextPutLine: 'GET /test/typed.asmx?WSDL HTTP/1.1';
		nextPutLine: 'Host: foo.com:8888';
		crlf.
	request := HTTPRequest readFrom: (SwazooStream on: requestStream writeBuffer contents).
	self assert: (request includesQuery: 'WSDL').
	self assert: (request queryAt: 'WSDL') isEmpty!

testPortedGetPort
	request := self portedGet.
	self assert: request port = 8888!

testReferer
	request := self fullGet.
	self 
		assert: request referer asString = 'http://www.bar.com/takeMeThere.html'!

testRequestWithCRButNoLF

"	| requestStream result |
	requestStream := SwazooStream on: String new.
	requestStream
		nextPutAll: 'GET / HTTP/1.1';
		cr.
	result := SpExceptionContext 
				for: [HTTPRequest readFrom: (SwazooStream on: requestStream writeBuffer contents)]
				on: SpError
				do: [:ex | ex].
	self assert: result class == SwazooHTTPParseError.
	^self"!

testUserAgent
	request := self fullGet.
	self 
		assert: request userAgent = 'Mozilla/4.72 [en] (X11; I; Linux 2.3.51 i686)'! !
!HTTPRequestTest categoriesFor: #basicGet!public!requests-gets! !
!HTTPRequestTest categoriesFor: #basicGetHTTP10!public!requests-gets! !
!HTTPRequestTest categoriesFor: #basicGetHTTP10Keepalive!public!requests-gets! !
!HTTPRequestTest categoriesFor: #basicHead!public!requests-gets! !
!HTTPRequestTest categoriesFor: #crlfOn:!private! !
!HTTPRequestTest categoriesFor: #fullGet!public!requests-gets! !
!HTTPRequestTest categoriesFor: #getMultiValueHeader!public!requests-gets! !
!HTTPRequestTest categoriesFor: #portedGet!public!requests-gets! !
!HTTPRequestTest categoriesFor: #test10ConnectionClose!public!testing-other! !
!HTTPRequestTest categoriesFor: #test10KeepAliveConnectionClose!public!testing-other! !
!HTTPRequestTest categoriesFor: #testBasicGet!public!testing-gets! !
!HTTPRequestTest categoriesFor: #testBasicGetHost!public!testing-gets! !
!HTTPRequestTest categoriesFor: #testBasicGetHTTP10!public!testing-gets! !
!HTTPRequestTest categoriesFor: #testBasicGetPort!public!testing-gets! !
!HTTPRequestTest categoriesFor: #testBasicHead!public!testing-gets! !
!HTTPRequestTest categoriesFor: #testConnection!public!testing-other! !
!HTTPRequestTest categoriesFor: #testGetMultiValueHeader!public!testing-gets! !
!HTTPRequestTest categoriesFor: #testHeaderAtIfPresent!public!testing-other! !
!HTTPRequestTest categoriesFor: #testMissingContentType!public!testing-other! !
!HTTPRequestTest categoriesFor: #testNo11ConnectionClose!public!testing-other! !
!HTTPRequestTest categoriesFor: #testNoEqualsQueries!public!testing-other! !
!HTTPRequestTest categoriesFor: #testPortedGetPort!public!testing-gets! !
!HTTPRequestTest categoriesFor: #testReferer!public!testing-other! !
!HTTPRequestTest categoriesFor: #testRequestWithCRButNoLF!public!testing-other! !
!HTTPRequestTest categoriesFor: #testUserAgent!public!testing-other! !

