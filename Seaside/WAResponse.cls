"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAResponse
	instanceVariableNames: 'headers cookies status message'
	classVariableNames: 'StatusMessages'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAResponse guid: (GUID fromString: '{a52387ce-528f-4d8f-872e-b29bc9205ba5}')!

WAResponse comment: 'A WAResponse is an abstract HTTP response objects. It is independent of the used server adapter.Instance Variables	status:		<Integer> The HTTP status code.	message:	<String> The HTTP status message.	headers:	<WAHeaderFields> A dictionary with the header fields.	cookies:	<OrderedCollection> A collection of cookies.'!

!WAResponse categoriesForClass!HTTP! !

!WAResponse methodsFor!

addCookie: aCookie	"Add the cookie to the receiver."	^ self cookies add: aCookie!

attachmentWithFileName: aString 	aString notNil ifTrue:  [		self 			headerAt: 'Content-Disposition'			put: 'attachment; filename="' , aString greaseString , '"' ]!

authenticationFailed	"Indicate that the request requires HTTP authentication."		self status: WAResponse statusUnauthorized!

badRequest	"The request could not be understood by the server due to malformed syntax. The client SHOULD NOT repeat the request without modifications."		self status: WAResponse statusBadRequest!

basicAuthenticationRealm: aString 	self 		headerAt: 'WWW-Authenticate'		put: 'Basic realm="' , aString greaseString , '"'.	self authenticationFailed!

binary	"put the response stream into binary mode"		self subclassResponsibility!

cacheFor: aDuration	"Configure the receiver to be cached for aDuration."	self removeHeaderAt: 'Pragma'. "Proxies"	self headerAt: 'Expires' putDate: DateAndTime now + aDuration. "HTTP 1.0"	self headerAt: 'Cache-Control' put: 'max-age=' , aDuration asSeconds printString "HTTP 1.1"!

cacheForever	"Configure the response to be cached by user agents."		self removeHeaderAt: 'Pragma'. "Proxies"	self headerAt: 'Expires' putDate: self cacheForeverExpiryDate. "HTTP 1.0"	self removeHeaderAt: 'Cache-Control' "HTTP 1.1"!

cacheForeverExpiryDate	"Answer the expiry date that should be used if the response should be cached forever.		Note that according to HTTP 1.1 says: To mark a response as 'never expires,' an origin server sends an Expires date approximately one year from the time the response is sent. HTTP/1.1 servers SHOULD NOT send Expires dates more than one year in the future."		^ (DateAndTime now) + (Duration days: 300 hours: 0 minutes: 0 seconds: 0)!

contentType	^ self headerAt: 'Content-Type' ifAbsent: [ WAMimeType textPlain ]!

contentType: aMimeType	self headerAt: 'Content-Type' put: aMimeType!

cookies	"Answer the cookies of this response."	^ cookies!

created	"The request has been fulfilled and resulted in a new resource being created."		self status: WAResponse statusCreated!

deleteCookie: aCookie 	"Try to get the path from the closest entry point in the context. This path	is used in case the browser did not provide the path information in the cookie.	Trouble is, this method may be called in a context where WACurrentRequestContext	is not defined or where there is no RequestHandler. In this case, we just use nil and	pray the cookie has path information or was created without any."		| baseUrl |	baseUrl := [ self requestContext handler url ] 		on: WARequestContextNotFound		do: [ :err | nil ].	self 		deleteCookie: aCookie		path: (baseUrl isNil ifFalse: [ baseUrl pathStringUnencoded ])		domain: (baseUrl isNil ifFalse: [ baseUrl host ])!

deleteCookie: aCookie path: aPathString domain: aDomainString	"Delete the cookie in the browser.		The spec sez:	If a CGI script wishes to delete a cookie, it can do so by returning a cookie with the same name, and an expires time which is in the past. The path and name must match exactly in order for the expiring cookie to replace the valid cookie. This requirement makes it difficult for anyone but the originator of a cookie to delete a cookie.		What is not specified but also has to match is the domain.		The trouble is:	Browsers that follow the Netscape spec don't send path or domain information"	| copy |	copy := (WACookie 		key: aCookie key		value: '')		pathUnencoded: aCookie pathUnencoded encoded: aCookie pathEncoded;		version: aCookie version;		domain: aCookie domain;		yourself.	aCookie version isNil ifTrue:  [		"old Netscape cookie with no path or domain information"		aPathString isNil ifFalse: [ 			copy path: aPathString ].		aDomainString isNil ifFalse: [			copy domain: aDomainString ] ].	copy expireInPast.	self addCookie: copy!

deleteCookieAt: aKeyString	"Delete the cookie in the browser. This method is quite unreliable. Consider using #deleteCookie:"	self deleteCookie: (WACookie key: aKeyString value: '')!

destroy	headers := cookies := nil!

document: aDocument	| document mimeType |	document := aDocument seasideMimeDocument.	self attachmentWithFileName: document fileName.	mimeType := document mimeType.	self contentType: mimeType.	mimeType isBinary		ifTrue: [ self binary ].	self nextPutAll: document content!

document: anObject mimeType: aMimeType	self document: (anObject seasideMimeDocument 		mimeType: aMimeType;		yourself)!

document: anObject mimeType: aMimeType fileName: aString	self document: (anObject seasideMimeDocument 		mimeType: aMimeType;		fileName: aString;		yourself)!

doNotCache	"Configure the receiver to not be cached at all."		self headerAt: 'Pragma' put: 'no-cache'. "Proxies"	self headerAt: 'Expires' putDate: self doNotCacheExpiryDate. "HTTP 1.0"	"http://blog.55minutes.com/2011/10/how-to-defeat-the-browser-back-button-cache/"	"https://code.google.com/p/seaside/issues/detail?id=772"	self headerAt: 'Cache-Control' put: 'no-cache, max-age=0, must-revalidate, no-store' "HTTP 1.1"!

doNotCacheExpiryDate	"Answer the expiry date that should be used if the response should not be cached at all."		^ DateAndTime year: 2000 month: 1 day: 1 hour: 0 minute: 0 second: 0!

entityTag: aString	"The ETag (or entity tag) HTTP response header is an identifier for a specific version of a resource."	self headerAt: 'ETag' put: aString!

flush	"Flush the receiver and send partial content	By default do nothing"!

forbidden	"Indicate that the server understood the request but refused to fulfill it."		self status: WAResponse statusForbidden!

found	"Indicate that the resource reside temporarily under a different URI."		self status: WAResponse statusFound!

frameOptions: aString	"This header will be deprecated and it's functionality will be moved to Content-Security-Policy 1.1 (which does not have the same level of support yet)."		self		headerAt: 'X-Frame-Options'		put: aString!

gone	"Indicate that the resource is no longer available at the server and no forwarding address is known."		self status: WAResponse statusGone!

headerAt: aString	"Answer the header with aString."		^ self headers at: aString!

headerAt: aString append: aValue 	"Appends a response header with aString and aValue. This method allows response headers to have multiple values."	^ self headers 		at: aString		add: aValue greaseString!

headerAt: aString ifAbsent: aBlock	"Answer the header with aString, if none answer the result of evaluating aBlock."		^ self headers at: aString ifAbsent: aBlock!

headerAt: aString put: aValue	"Set a response header with aString and aValue. If the header had already been set, the new value overwrites the previous one."		^ self headers at: aString put: aValue!

headerAt: aKeyString putDate: aDateAndTime 	"Convenience method that sets a response header with aKeyString and aDateAndTime. If the header had already been set, the new value overwrites the previous one."	^ self 		headerAt: aKeyString		put: (GRPrinter httpDate print: aDateAndTime)!

headers	"Answer the headers of this response."		^ headers!

httpVersion	"Answer the HTTP version to be used."	^ 'HTTP/1.1'!

initialize	super initialize.	self initializeFields!

initializeFields	status := 200.	message := 'OK'.	headers := WAHeaderFields new.	cookies := OrderedCollection new!

initializeOn: aStream 	self initialize!

inlineWithFileName: aString 	aString notNil ifTrue: [		self 			headerAt: 'Content-Disposition'			put: 'inline; filename="' , aString greaseString , '"' ]!

internalError	"Indicate an error inside the server which prevented it from fulfilling the request."	self status: WAResponse statusInternalServerError!

isCommitted	"Answer a boolean indicating if the response header has been committed."		^ false!

isStreamingResponse	"Return true if the receiver supports partial stream responses."	^ false!

location: aUrlOrString 	self 		headerAt: 'Location'		put: aUrlOrString!

message	"Answer the message associated with this response."	^ message!

movedPermanently	"The requested resource has been assigned a new permanent URI and any future references to this resource SHOULD use one of the returned URIs."		self status: WAResponse statusMovedPermanently!

nextPut: aByteOrCharacter	"Append the element to the body part of the response."		self stream nextPut: aByteOrCharacter!

nextPutAll: aStringOrByteArray	"Append the elements of aStringOrByteArray to the body part of the response."		self stream nextPutAll: aStringOrByteArray!

notFound	"Indicate that the requested resource is not available."		self status: WAResponse statusNotFound!

notImplemented	"Indicate the HTTP server does not support the functionality needed to fulfill the request."		self status: WAResponse statusNotImplemented!

notModified	"ndicate that there is no need to retransmit the requested resources. It is an implicit redirection to a cached resource."		self status: WAResponse statusNotModified!

preconditionFailed	"The precondition given in one or more of the request-header fields evaluated to false when it was tested on the server. This response code allows the client to place preconditions on the current resource metainformation (header field data) and thus prevent the requested method from being applied to a resource other than the one intended."		self status: WAResponse statusPreconditionFailed!

printOn: aStream 	super printOn: aStream.	aStream nextPutAll: ' status: '; print: self status.	aStream nextPutAll: ' message: '; print: self message!

redirectTo: aUrlOrString	self location: aUrlOrString.	self found!

refreshAfter: aDuration location: aUrl 	self 		headerAt: 'Refresh'		put: aDuration asSeconds greaseString , '; ' , aUrl greaseString!

removeHeaderAt: aString	"Removes all occurences of the header value aString."	^ self headers removeKey: aString!

resetIfPossible	"Try to reset the receiver, answer whether it was successful.	Resetting may fail in stream method the response is already committed."	self initializeFields.	^ true!

respond	WAResponseNotification signal!

status	"Answer the status code associated with this response."	^ status!

status: aNumber	"Set the status to aNumber and associate the default message."	self status: aNumber message: (self class messageForStatus: aNumber)!

status: aNumber message: aString	"Set the status to aNumber and the message to aString."		status := aNumber.	message := aString!

stream	"Answer a write stream, this is where contents should be written to."		self subclassResponsibility!

strictTransportSecurity: maxAge includeSubDomains: aBoolean	"Implements Strict Transport Security (STS).		http://lists.w3.org/Archives/Public/www-archive/2009Dec/att-0048/draft-hodges-strict-transport-sec-06.plain.html	Use only over secure connections (HTTPS)."		self		headerAt: 'Strict-Transport-Security'		put: 'max-age=', maxAge greaseString,			(aBoolean ifTrue: [ '; includeSubDomains' ] ifFalse: [ '' ])!

writeContentAsStringOn: aStream	self subclassResponsibility!

writeContentOn: aStream	self subclassResponsibility!

writeCookiesOn: aStream	cookies do: [ :each | 		aStream nextPutAll: 'Set-Cookie: '.		each writeOn: aStream.		aStream crlf ]!

writeHeadersOn: aStream 	headers keysAndValuesDo: [ :key :value | 		aStream			nextPutAll: key;			nextPutAll: ': ';			nextPutAll: value greaseString;			crlf ]!

writeOn: aStream	"Note: only works if the stream's collection class is a String (used for test/development purposes only"	self writeStatusOn: aStream.	self writeHeadersOn: aStream.	self writeCookiesOn: aStream.	aStream crlf.	self writeContentAsStringOn: aStream!

writeStatusOn: aStream 	aStream nextPutAll: self httpVersion.	aStream		space;		nextPutAll: self status greaseString.	self message isNil ifFalse:  [		aStream			space;			nextPutAll: self message ].	aStream crlf! !

!WAResponse categoriesForMethods!
addCookie:!accessing/cookies!public! !
attachmentWithFileName:!convenience/headers!public! !
authenticationFailed!public!status! !
badRequest!public!status! !
basicAuthenticationRealm:!convenience/status!public! !
binary!public!streaming! !
cacheFor:!convenience/caching!public! !
cacheForever!convenience/caching!public! !
cacheForeverExpiryDate!configuration!public! !
contentType!convenience/accessing!public! !
contentType:!convenience/accessing!public! !
cookies!accessing!public! !
created!public!status! !
deleteCookie:!accessing/cookies!public! !
deleteCookie:path:domain:!accessing/cookies!public! !
deleteCookieAt:!accessing/cookies!public! !
destroy!initialization!public! !
document:!documents!public! !
document:mimeType:!documents!public! !
document:mimeType:fileName:!documents!public! !
doNotCache!convenience/caching!public! !
doNotCacheExpiryDate!configuration!public! !
entityTag:!convenience/caching!public! !
flush!public! !
forbidden!public!status! !
found!public!status! !
frameOptions:!convenience/headers!public! !
gone!public!status! !
headerAt:!accessing/headers!public! !
headerAt:append:!accessing/headers!public! !
headerAt:ifAbsent:!accessing/headers!public! !
headerAt:put:!accessing/headers!public! !
headerAt:putDate:!accessing/headers!public! !
headers!accessing!public! !
httpVersion!configuration!public! !
initialize!initialization!public! !
initializeFields!initialization!public! !
initializeOn:!initialization!public! !
inlineWithFileName:!convenience/headers!public! !
internalError!public!status! !
isCommitted!public!testing! !
isStreamingResponse!public!testing! !
location:!convenience/headers!public! !
message!accessing!public! !
movedPermanently!public!status! !
nextPut:!public!streaming! !
nextPutAll:!public!streaming! !
notFound!public!status! !
notImplemented!public!status! !
notModified!public!status! !
preconditionFailed!public!status! !
printOn:!printing!public! !
redirectTo:!convenience/status!public! !
refreshAfter:location:!convenience/status!public! !
removeHeaderAt:!accessing/headers!public! !
resetIfPossible!convenience!public! !
respond!convenience!public! !
status!accessing!public! !
status:!accessing/status!public! !
status:message:!accessing/status!public! !
stream!accessing!public! !
strictTransportSecurity:includeSubDomains:!convenience/headers!public! !
writeContentAsStringOn:!public!writing! !
writeContentOn:!public!writing! !
writeCookiesOn:!public!writing! !
writeHeadersOn:!public!writing! !
writeOn:!public!writing! !
writeStatusOn:!public!writing! !
!

!WAResponse class methodsFor!

initialize	self initializeStatusMessages!

initializeStatusMessages	StatusMessages := Dictionary new.	StatusMessages		at: self statusContinue put: 'Continue';		at: self statusSwitchingProtocols put: 'Switching Protocols';		at: self statusProcessing put: 'Processing';		at: self statusOk put: 'OK';		at: self statusCreated put: 'Created';		at: self statusAccepted put: 'Accepted';		at: self statusNonAuthoritativeInformation put: 'Non-Authoritative Information';		at: self statusNoContent put: 'No Content';		at: self statusResetContent put: 'Reset Content';		at: self statusPartialContent put: 'Partial Content';		at: self statusMultiStatus put: 'Multi-Status';		at: self statusAlreadyReported put: 'Already Reported';		at: self statusInstanceManipulationUsed put: 'IM Used';				at: self statusMultipleChoices put: 'Multiple Choices';		at: self statusMovedPermanently put: 'Moved Permanently';		at: self statusFound put: 'Found';		at: self statusSeeOther put: 'See Other';		at: self statusNotModified put: 'Not Modified';		at: self statusUseProxy put: 'Use Proxy';		at: self statusTemporaryRedirect put: 'Temporary Redirect';		at: self statusPermanentRedirect put: 'Permanent Redirect';		at: self statusBadRequest put: 'Bad Request';		at: self statusUnauthorized put: 'Unauthorized';		at: self statusPaymentRequired put: 'Payment Required';		at: self statusForbidden put: 'Forbidden';		at: self statusNotFound put: 'Not Found';		at: self statusMethodNotAllowed put: 'Method Not Allowed';		at: self statusNotAcceptable put: 'Not Acceptable';		at: self statusProxyAuthenticationRequired put: 'Proxy Authentication Required';		at: self statusRequestTimeout put: 'Request Timeout';		at: self statusConflict put: 'Conflict';		at: self statusGone put: 'Gone';		at: self statusLengthRequired put: 'Length Required';		at: self statusPreconditionFailed put: 'Precondition Failed';		at: self statusRequestEntityTooLarge put: 'Request Entity Too Large';		at: self statusRequestUriTooLong put: 'Request-URI Too Long';		at: self statusUnsupportedMediaType put: 'Unsupported Media Type';		at: self statusRequestedRangeNotSatisfiable put: 'Requested Range Not Satisfiable';		at: self statusExpectationFailed put: 'Expectation Failed';		at: self statusImATeapot put: 'I''m a teapot';		at: self statusUnprocessableEntity put: 'Unprocessable Entity';		at: self statusLocked put: 'Locked';		at: self statusFailedDependency put: 'Failed Dependency';		at: self statusUpgradeRequired put: 'Upgrade Required';		at: self statusPreconditionRequired put: 'Precondition Required';		at: self statusTooManyRequests put: 'Too Many Requests';		at: self statusRequestHeaderFieldsTooLarge put: 'Request Header Fields Too Large';		at: self statusInternalServerError put: 'Internal Server Error';		at: self statusNotImplemented put: 'Not Implemented';		at: self statusBadGateway put: 'Bad Gateway';		at: self statusServiceUnavailable put: 'Service Unavailable';		at: self statusGatewayTimeout put: 'Gateway Timeout';		at: self statusHttpVersionNotSupported put: 'HTTP Version Not Supported';		at: self statusVariantAlsoNegotiates put: 'Variant Also Negotiates';		at: self statusInsufficientStorage put: 'Insufficient Storage';		at: self statusLoopDetected put: 'Loop Detected';		at: self statusNotExtended put: 'Not Extended';		at: self statusNetworkAuthenticationRequired put: 'Network Authentication Required'!

messageForStatus: anInteger	^ StatusMessages at: anInteger ifAbsent: [ nil ]!

statusAccepted	^ 202!

statusAlreadyReported	^ 208!

statusBadGateway	^ 502!

statusBadRequest	^ 400!

statusBandwidthLimitExceeded	^ 509!

statusConflict	^ 409!

statusContinue	^ 100!

statusCreated	^ 201!

statusExpectationFailed	^ 417!

statusFailedDependency	^ 424!

statusForbidden	^ 403!

statusFound	^ 302!

statusGatewayTimeout	^ 504!

statusGone	^ 410!

statusHttpVersionNotSupported	^ 505!

statusImATeapot	^ 418!

statusInstanceManipulationUsed	^ 226!

statusInsufficientStorage	^ 507!

statusInternalServerError	^ 500!

statusLengthRequired	^ 411!

statusLocked	^ 423!

statusLoopDetected	^ 508!

statusMethodNotAllowed	^ 405!

statusMovedPermanently	^ 301!

statusMultipleChoices	^ 300!

statusMultiStatus	^ 207!

statusNetworkAuthenticationRequired	^ 511!

statusNoContent	^ 204!

statusNonAuthoritativeInformation	^ 203!

statusNotAcceptable	^ 406!

statusNotExtended	^ 510!

statusNotFound	^ 404!

statusNotImplemented	^ 501!

statusNotModified	^ 304!

statusOk	^ 200!

statusPartialContent	^ 206!

statusPaymentRequired	^ 402!

statusPermanentRedirect	^ 308!

statusPreconditionFailed	^ 412!

statusPreconditionRequired	^ 428!

statusProcessing	^ 102!

statusProxyAuthenticationRequired	^ 407!

statusRequestedRangeNotSatisfiable	^ 416!

statusRequestEntityTooLarge	^ 413!

statusRequestHeaderFieldsTooLarge	^ 431!

statusRequestTimeout	^ 408!

statusRequestUriTooLong	^ 414!

statusResetContent	^ 205!

statusSeeOther	^ 303!

statusServiceUnavailable	^ 503!

statusSwitchingProtocols	^ 101!

statusSwitchProxy	^ 306!

statusTemporaryRedirect	^ 307!

statusTooManyRequests	^ 429!

statusUnauthorized	^ 401!

statusUnorderedCollection	^ 425!

statusUnprocessableEntity	^ 422!

statusUnsupportedMediaType	^ 415!

statusUpgradeRequired	^ 426!

statusUseProxy	^ 305!

statusVariantAlsoNegotiates	^ 506! !

!WAResponse class categoriesForMethods!
initialize!initialization!public! !
initializeStatusMessages!initialization!public! !
messageForStatus:!accessing!public! !
statusAccepted!public!status/success! !
statusAlreadyReported!public!status/success! !
statusBadGateway!public!status/server/error! !
statusBadRequest!public!status/client/error! !
statusBandwidthLimitExceeded!public!status/server/error! !
statusConflict!public!status/client/error! !
statusContinue!public!status/informal! !
statusCreated!public!status/success! !
statusExpectationFailed!public!status/client/error! !
statusFailedDependency!public!status/client/error! !
statusForbidden!public!status/client/error! !
statusFound!public!status/redirection! !
statusGatewayTimeout!public!status/server/error! !
statusGone!public!status/client/error! !
statusHttpVersionNotSupported!public!status/server/error! !
statusImATeapot!public!status/client/error! !
statusInstanceManipulationUsed!public!status/success! !
statusInsufficientStorage!public!status/server/error! !
statusInternalServerError!public!status/server/error! !
statusLengthRequired!public!status/client/error! !
statusLocked!public!status/client/error! !
statusLoopDetected!public!status/server/error! !
statusMethodNotAllowed!public!status/client/error! !
statusMovedPermanently!public!status/redirection! !
statusMultipleChoices!public!status/redirection! !
statusMultiStatus!public!status/success! !
statusNetworkAuthenticationRequired!public!status/server/error! !
statusNoContent!public!status/success! !
statusNonAuthoritativeInformation!public!status/success! !
statusNotAcceptable!public!status/client/error! !
statusNotExtended!public!status/server/error! !
statusNotFound!public!status/client/error! !
statusNotImplemented!public!status/server/error! !
statusNotModified!public!status/redirection! !
statusOk!public!status/success! !
statusPartialContent!public!status/success! !
statusPaymentRequired!public!status/client/error! !
statusPermanentRedirect!public!status/redirection! !
statusPreconditionFailed!public!status/client/error! !
statusPreconditionRequired!public!status/client/error! !
statusProcessing!public!status/informal! !
statusProxyAuthenticationRequired!public!status/client/error! !
statusRequestedRangeNotSatisfiable!public!status/client/error! !
statusRequestEntityTooLarge!public!status/client/error! !
statusRequestHeaderFieldsTooLarge!public!status/client/error! !
statusRequestTimeout!public!status/client/error! !
statusRequestUriTooLong!public!status/client/error! !
statusResetContent!public!status/success! !
statusSeeOther!public!status/redirection! !
statusServiceUnavailable!public!status/server/error! !
statusSwitchingProtocols!public!status/informal! !
statusSwitchProxy!public!status/redirection! !
statusTemporaryRedirect!public!status/redirection! !
statusTooManyRequests!public!status/client/error! !
statusUnauthorized!public!status/client/error! !
statusUnorderedCollection!public!status/client/error! !
statusUnprocessableEntity!public!status/client/error! !
statusUnsupportedMediaType!public!status/client/error! !
statusUpgradeRequired!public!status/client/error! !
statusUseProxy!public!status/redirection! !
statusVariantAlsoNegotiates!public!status/server/error! !
!

