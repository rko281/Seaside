﻿"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WARequestTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARequestTest guid: (GUID fromString: '{819c072d-c9e8-4861-9cbe-859df8b9b390}')!

WARequestTest comment: ''!

!WARequestTest categoriesForClass!HTTP! !

!WARequestTest methodsFor!

test10	| request |	request := WARequest method: 'GET' uri: '/' version: WAHttpVersion http10.		self assert: request isGet.	self assert: request isHttp10.	self deny: request isSsl!

test11	| request |	request := WARequest method: 'GET' uri: '/' version: WAHttpVersion http11.		self assert: request isGet.	self assert: request isHttp11.	self deny: request isSsl!

testBasicAuthorisation	| request headers |	request := WARequest method: 'GET' uri: '/foo?bar=1'.	headers := Dictionary new.	headers at: 'authorization' put: 'Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ=='.	request setHeaders: headers.		self assert: request authorization = 'Aladdin:open sesame'.	self assert: request user = 'Aladdin'.	self assert: request password = 'open sesame'!

testBodyDecoded	| request headers |	request := WARequest method: 'POST' uri: '/foo?bar=1'.	request setBody: ((GRCodec forEncoding: 'utf-8') encode: 'baz=2&bar=3&foo=é').	self should: [ request bodyDecoded ] raise: WAIllegalStateException.		headers := Dictionary new.	headers at: 'content-type' put: (WAMimeType formUrlencoded charset: 'utf-8'; yourself) greaseString.	request setHeaders: headers.	self assert: request bodyDecoded equals: 'baz=2&bar=3&foo=é'.		request setBody: nil.	self assert: request bodyDecoded equals: nil!

testForwarded	| request headers |	request := WARequest method: 'GET' uri: '/foo?bar=1'.	headers := Dictionary new.	headers at: 'forwarded' put: 'For="[2001:db8:cafe::17]:4711"'.	request setHeaders: headers.		self assert: request forwarded = 'For="[2001:db8:cafe::17]:4711"'!

testForwardedFor	| request headers |	request := WARequest method: 'GET' uri: '/foo?bar=1'.	headers := Dictionary new.	request setHeaders: headers.		headers at: 'forwarded' put: 'For="[2001:db8:cafe::17]:4711"'.	self assert: request forwardedFor equals: '"[2001:db8:cafe::17]:4711"'.	headers at: 'forwarded' put: 'for=192.0.2.60;proto=http;by=203.0.113.43'.	self assert: request forwardedFor equals: '192.0.2.60'.	headers at: 'forwarded' put: 'for=192.0.2.43, for=198.51.100.17'.	self assert: request forwardedFor equals: '192.0.2.43'!

testIsPrefetch	| request headers |	request := WARequest method: 'GET' uri: '/foo'.	self deny: request isPrefetch.		headers := Dictionary new.	headers at: 'x-moz' put: 'prefetch'.	request setHeaders: headers.	self assert: request isPrefetch!

testIsSsl	| request |	request := WARequest		method: 'GET'		uri: ('/' seasideUrl			scheme: 'https';			yourself)		version: WAHttpVersion http11.		self assert: request isGet.	self assert: request isHttp11.	self assert: request isSsl!

testPostFields	| request headers |	request := WARequest method: 'POST' uri: '/foo?bar=1'.	self		deny: request isXmlHttpRequest;		assert: request headers class equals: WAHeaderFields;		assert: request remoteAddress isNil;		assert: request isPost;		assert: request sslSessionId isNil.	headers := Dictionary new.	headers at: 'content-type' put: WAMimeType formUrlencoded greaseString.	request setHeaders: headers.	request setBody: 'baz=2&bar=3'.	request setPostFields: (WARequestFields new at: 'baz' put: '2'; at: 'bar' put: '3'; yourself).		self assert: request postFields size = 2.	self assert: (request postFields at: 'baz') = '2'.	self assert: (request postFields at: 'bar') = '3'.	self assert: request queryFields size = 1.	self assert: (request queryFields at: 'bar') = '1'.	self assert: request fields size = 3.	self assert: (request fields at: 'bar') = '1'.	self assert: (request fields at: 'baz') = '2'! !

!WARequestTest categoriesForMethods!
test10!public!tests! !
test11!public!tests! !
testBasicAuthorisation!public!tests! !
testBodyDecoded!public!tests! !
testForwarded!public!tests! !
testForwardedFor!public!tests! !
testIsPrefetch!public!tests! !
testIsSsl!public!tests! !
testPostFields!public!tests! !
!

