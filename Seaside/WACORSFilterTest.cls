"Filed out from Dolphin Smalltalk"!

WAContextTest subclass: #WACORSFilterTest
	instanceVariableNames: 'application'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACORSFilterTest guid: (GUID fromString: '{a77cbe12-70e1-40c7-9048-0f629a04a880}')!

WACORSFilterTest comment: ''!

!WACORSFilterTest categoriesForClass!Seaside-Tests-Core-Filter! !

!WACORSFilterTest methodsFor!

createHandlers	| dispatcher root |	root := WADispatcher new.	dispatcher := root register: WADispatcher new at: 'root'.	application := dispatcher register: WAApplication new at: 'corsfiltertest'.	^ Array with: root with: dispatcher with: application!

createRequest	| request headers |	request := WARequest new.	headers := Dictionary new.	headers at: 'origin' put: 'http://localhost:8080'.	request setHeaders: headers.	^ request!

testCORSRequestAllowCredentials	| response request filter |	request := self requestContext.	filter := WACORSFilter new.	application addFilterFirst: filter.	filter allowsCredentials: true.	response := self responseAfter: [ application handle: request ].	self assert: (response headers at: 'Access-Control-Allow-Credentials') equals: 'true'!

testCORSRequestAllowCredentials2	| response request filter |	request := self requestContext.	filter := WACORSFilter new.	application addFilterFirst: filter.	filter allowsCredentials: false.	response := self responseAfter: [ application handle: request ].	self assert: response headers isEmpty!

testCORSRequestAllowedHeaders	| response request filter |	request := self requestContext.	filter := WACORSFilter new.	application addFilterFirst: filter.	filter addAllowedHeader: 'Content-Type'.	response := self responseAfter: [ application handle: request ].	self assert: (response headers at: 'Access-Control-Allow-Headers') equals: 'Content-Type'!

testCORSRequestAllowedHeaders2	| response request filter |	request := self requestContext.	filter := WACORSFilter new.	application addFilterFirst: filter.	filter 		addAllowedHeader: 'Content-Type';		addAllowedHeader: 'X-Custom-Header'.	response := self responseAfter: [ application handle: request ].	self assert: (response headers at: 'Access-Control-Allow-Headers') equals: 'Content-Type, X-Custom-Header'!

testCORSRequestAllowedHeaders3	| response request filter |	request := self requestContext.	filter := WACORSFilter new.	application addFilterFirst: filter.	filter 		addAllowedHeader: 'Content-Type';		allowAllHeaders.	response := self responseAfter: [ application handle: request ].	self assert: (response headers at: 'Access-Control-Allow-Headers') equals: '*'!

testCORSRequestAllowedMethods	| response request filter |	request := self requestContext.	filter := WACORSFilter new.	application addFilterFirst: filter.	filter useExplicitMethods.	response := self responseAfter: [ application handle: request ].	self assert: (response headers at: 'Access-Control-Allow-Methods') equals: 'GET, POST, HEAD'!

testCORSRequestAllowedMethods2	| response request filter |	request := self requestContext.	filter := WACORSFilter new.	application addFilterFirst: filter.	filter addAllowedMethod: 'GET'.	response := self responseAfter: [ application handle: request ].	self assert: (response headers at: 'Access-Control-Allow-Methods') equals: 'GET'!

testCORSRequestEmpty	| response request filter |	request := self requestContext.	filter := WACORSFilter new.	application addFilterFirst: filter.	response := self responseAfter: [ application handle: request ].	self assert: response headers isEmpty.	!

testCORSRequestExposedHeaders	| response request filter |	request := self requestContext.	filter := WACORSFilter new.	application addFilterFirst: filter.	filter exposedHeaders: { 'Content-Type' . 'X-Custom-Header' }.	response := self responseAfter: [ application handle: request ].	self assert: (response headers at: 'Access-Control-Expose-Headers') equals: 'Content-Type, X-Custom-Header'!

testCORSRequestMaxAge	| response request filter |	request := self requestContext.	filter := WACORSFilter new.	application addFilterFirst: filter.	filter maxAge: 3600.	response := self responseAfter: [ application handle: request ].	self assert: (response headers at: 'Access-Control-Max-Age') equals: '3600'!

testCORSRequestOriginsHeader	| response request filter |	request := self requestContext.	filter := WACORSFilter new.	application addFilterFirst: filter.	filter allowAnyOrigin.	response := self responseAfter: [ application handle: request ].	self assert: (response headers at: 'Access-Control-Allow-Origin') equals: '*'.	self assert: (response headers at: 'Vary') equals: nil.	self assert: filter allowsAnyOrigin!

testCORSRequestOriginsHeader2	| response request filter |	request := self requestContext.	filter := WACORSFilter new.	application addFilterFirst: filter.	filter allowedOrigin: 'http://localhost:8080'.	response := self responseAfter: [ application handle: request ].	self assert: (response headers at: 'Access-Control-Allow-Origin') equals: 'http://localhost:8080'.	self assert: (response headers at: 'Vary') equals: 'Origin'.	self deny: filter allowsAnyOrigin!

testCORSRequestOriginsHeader3	| response request filter |	request := self requestContext.	filter := WACORSFilter new.	application addFilterFirst: filter.	filter denyAllOrigins.	response := self responseAfter: [ application handle: request ].	self assert: response headers isEmpty.	self deny: filter allowsAnyOrigin! !

!WACORSFilterTest categoriesForMethods!
createHandlers!configuration!public! !
createRequest!configuration!public! !
testCORSRequestAllowCredentials!public!tests! !
testCORSRequestAllowCredentials2!public!tests! !
testCORSRequestAllowedHeaders!public!tests! !
testCORSRequestAllowedHeaders2!public!tests! !
testCORSRequestAllowedHeaders3!public!tests! !
testCORSRequestAllowedMethods!public!tests! !
testCORSRequestAllowedMethods2!public!tests! !
testCORSRequestEmpty!public!tests! !
testCORSRequestExposedHeaders!public!tests! !
testCORSRequestMaxAge!public!tests! !
testCORSRequestOriginsHeader!public!tests! !
testCORSRequestOriginsHeader2!public!tests! !
testCORSRequestOriginsHeader3!public!tests! !
!

