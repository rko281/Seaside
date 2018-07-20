"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAResponse
	instanceVariableNames: 'headers cookies status message'
	classVariableNames: 'StatusMessages'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAResponse guid: (GUID fromString: '{4d1c263e-5379-48b7-bbd3-ad28de01109f}')!
WAResponse comment: 'A WAResponse is an abstract HTTP response objects. It is independent of the used server adapter.Instance Variables	status:		<Integer> The HTTP status code.	message:	<String> The HTTP status message.	headers:	<WAHeaderFields> A dictionary with the header fields.	cookies:	<OrderedCollection> A collection of cookies.'!
!WAResponse categoriesForClass!Seaside-Core-HTTP! !
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

doNotCache	"Configure the receiver to not be cached at all."		self headerAt: 'Pragma' put: 'no-cache'. "Proxies"	self headerAt: 'Expires' putDate: self doNotCacheExpiryDate. "HTTP 1.0"	"http://blog.55minutes.com/2011/10/how-to-defeat-the-browser-back-button-cache/"	"https://code.google.com/p/seaside/issues/detail?id=772"	self headerAt: 'Cache-Control' put: 'no-cache, max-age=0, must-revalidate, no-store' "HTTP 1.1"	!

doNotCacheExpiryDate	"Answer the expiry date that should be used if the response should not be cached at all."		^ DateAndTime year: 2000 month: 1 day: 1 hour: 0 minute: 0 second: 0!

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

location: aUrlOrString 	self 		headerAt: 'Location'		put: aUrlOrString greaseString!

message	"Answer the message associated with this response."	^ message!

movedPermanently	"The requested resource has been assigned a new permanent URI and any future references to this resource SHOULD use one of the returned URIs."		self status: WAResponse statusMovedPermanently!

nextPut: aByteOrCharacter	"Append the element to the body part of the response."		self stream nextPut: aByteOrCharacter!

nextPutAll: aStringOrByteArray	"Append the elements of aStringOrByteArray to the body part of the response."		self stream nextPutAll: aStringOrByteArray!

notFound	"Indicate that the requested resource is not available."		self status: WAResponse statusNotFound!

notImplemented	"Indicate the HTTP server does not support the functionality needed to fulfill the request."		self status: WAResponse statusNotImplemented!

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

writeContentOn: aStream	self subclassResponsibility!

writeCookiesOn: aStream	cookies do: [ :each | 		aStream nextPutAll: 'Set-Cookie: '.		each writeOn: aStream.		aStream crlf ]!

writeHeadersOn: aStream 	headers keysAndValuesDo: [ :key :value | 		aStream			nextPutAll: key;			nextPutAll: ': ';			nextPutAll: value greaseString;			crlf ]!

writeOn: aStream	self writeStatusOn: aStream.	self writeHeadersOn: aStream.	self writeCookiesOn: aStream.	aStream crlf.	self writeContentOn: aStream!

writeStatusOn: aStream 	aStream nextPutAll: self httpVersion.	aStream		nextPut: $ ;		nextPutAll: self status greaseString.	self message isNil ifFalse:  [		aStream			nextPut: $ ;			nextPutAll: self message ].	aStream crlf! !
!WAResponse categoriesFor: #addCookie:!accessing/cookies!public! !
!WAResponse categoriesFor: #attachmentWithFileName:!convenience/headers!public! !
!WAResponse categoriesFor: #authenticationFailed!public!status! !
!WAResponse categoriesFor: #badRequest!public!status! !
!WAResponse categoriesFor: #basicAuthenticationRealm:!convenience/status!public! !
!WAResponse categoriesFor: #binary!public!streaming! !
!WAResponse categoriesFor: #cacheFor:!convenience/caching!public! !
!WAResponse categoriesFor: #cacheForever!convenience/caching!public! !
!WAResponse categoriesFor: #cacheForeverExpiryDate!configuration!public! !
!WAResponse categoriesFor: #contentType!convenience/accessing!public! !
!WAResponse categoriesFor: #contentType:!convenience/accessing!public! !
!WAResponse categoriesFor: #cookies!accessing!public! !
!WAResponse categoriesFor: #created!public!status! !
!WAResponse categoriesFor: #deleteCookie:!accessing/cookies!public! !
!WAResponse categoriesFor: #deleteCookie:path:domain:!accessing/cookies!public! !
!WAResponse categoriesFor: #deleteCookieAt:!accessing/cookies!public! !
!WAResponse categoriesFor: #destroy!initialization!public! !
!WAResponse categoriesFor: #document:!documents!public! !
!WAResponse categoriesFor: #document:mimeType:!documents!public! !
!WAResponse categoriesFor: #document:mimeType:fileName:!documents!public! !
!WAResponse categoriesFor: #doNotCache!convenience/caching!public! !
!WAResponse categoriesFor: #doNotCacheExpiryDate!configuration!public! !
!WAResponse categoriesFor: #flush!public! !
!WAResponse categoriesFor: #forbidden!public!status! !
!WAResponse categoriesFor: #found!public!status! !
!WAResponse categoriesFor: #frameOptions:!convenience/headers!public! !
!WAResponse categoriesFor: #gone!public!status! !
!WAResponse categoriesFor: #headerAt:!accessing/headers!public! !
!WAResponse categoriesFor: #headerAt:append:!accessing/headers!public! !
!WAResponse categoriesFor: #headerAt:ifAbsent:!accessing/headers!public! !
!WAResponse categoriesFor: #headerAt:put:!accessing/headers!public! !
!WAResponse categoriesFor: #headerAt:putDate:!accessing/headers!public! !
!WAResponse categoriesFor: #headers!accessing!public! !
!WAResponse categoriesFor: #httpVersion!configuration!public! !
!WAResponse categoriesFor: #initialize!initialization!public! !
!WAResponse categoriesFor: #initializeFields!initialization!public! !
!WAResponse categoriesFor: #initializeOn:!initialization!public! !
!WAResponse categoriesFor: #inlineWithFileName:!convenience/headers!public! !
!WAResponse categoriesFor: #internalError!public!status! !
!WAResponse categoriesFor: #isCommitted!public!testing! !
!WAResponse categoriesFor: #isStreamingResponse!public!testing! !
!WAResponse categoriesFor: #location:!convenience/headers!public! !
!WAResponse categoriesFor: #message!accessing!public! !
!WAResponse categoriesFor: #movedPermanently!public!status! !
!WAResponse categoriesFor: #nextPut:!public!streaming! !
!WAResponse categoriesFor: #nextPutAll:!public!streaming! !
!WAResponse categoriesFor: #notFound!public!status! !
!WAResponse categoriesFor: #notImplemented!public!status! !
!WAResponse categoriesFor: #preconditionFailed!public!status! !
!WAResponse categoriesFor: #printOn:!printing!public! !
!WAResponse categoriesFor: #redirectTo:!convenience/status!public! !
!WAResponse categoriesFor: #refreshAfter:location:!convenience/status!public! !
!WAResponse categoriesFor: #removeHeaderAt:!accessing/headers!public! !
!WAResponse categoriesFor: #resetIfPossible!convenience!public! !
!WAResponse categoriesFor: #respond!convenience!public! !
!WAResponse categoriesFor: #status!accessing!public! !
!WAResponse categoriesFor: #status:!accessing/status!public! !
!WAResponse categoriesFor: #status:message:!accessing/status!public! !
!WAResponse categoriesFor: #stream!accessing!public! !
!WAResponse categoriesFor: #strictTransportSecurity:includeSubDomains:!convenience/headers!public! !
!WAResponse categoriesFor: #writeContentOn:!public!writing! !
!WAResponse categoriesFor: #writeCookiesOn:!public!writing! !
!WAResponse categoriesFor: #writeHeadersOn:!public!writing! !
!WAResponse categoriesFor: #writeOn:!public!writing! !
!WAResponse categoriesFor: #writeStatusOn:!public!writing! !

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
!WAResponse class categoriesFor: #initialize!initialization!public! !
!WAResponse class categoriesFor: #initializeStatusMessages!initialization!public! !
!WAResponse class categoriesFor: #messageForStatus:!accessing!public! !
!WAResponse class categoriesFor: #statusAccepted!public!status/success! !
!WAResponse class categoriesFor: #statusAlreadyReported!public!status/success! !
!WAResponse class categoriesFor: #statusBadGateway!public!status/server/error! !
!WAResponse class categoriesFor: #statusBadRequest!public!status/client/error! !
!WAResponse class categoriesFor: #statusBandwidthLimitExceeded!public!status/server/error! !
!WAResponse class categoriesFor: #statusConflict!public!status/client/error! !
!WAResponse class categoriesFor: #statusContinue!public!status/informal! !
!WAResponse class categoriesFor: #statusCreated!public!status/success! !
!WAResponse class categoriesFor: #statusExpectationFailed!public!status/client/error! !
!WAResponse class categoriesFor: #statusFailedDependency!public!status/client/error! !
!WAResponse class categoriesFor: #statusForbidden!public!status/client/error! !
!WAResponse class categoriesFor: #statusFound!public!status/redirection! !
!WAResponse class categoriesFor: #statusGatewayTimeout!public!status/server/error! !
!WAResponse class categoriesFor: #statusGone!public!status/client/error! !
!WAResponse class categoriesFor: #statusHttpVersionNotSupported!public!status/server/error! !
!WAResponse class categoriesFor: #statusImATeapot!public!status/client/error! !
!WAResponse class categoriesFor: #statusInstanceManipulationUsed!public!status/success! !
!WAResponse class categoriesFor: #statusInsufficientStorage!public!status/server/error! !
!WAResponse class categoriesFor: #statusInternalServerError!public!status/server/error! !
!WAResponse class categoriesFor: #statusLengthRequired!public!status/client/error! !
!WAResponse class categoriesFor: #statusLocked!public!status/client/error! !
!WAResponse class categoriesFor: #statusLoopDetected!public!status/server/error! !
!WAResponse class categoriesFor: #statusMethodNotAllowed!public!status/client/error! !
!WAResponse class categoriesFor: #statusMovedPermanently!public!status/redirection! !
!WAResponse class categoriesFor: #statusMultipleChoices!public!status/redirection! !
!WAResponse class categoriesFor: #statusMultiStatus!public!status/success! !
!WAResponse class categoriesFor: #statusNetworkAuthenticationRequired!public!status/server/error! !
!WAResponse class categoriesFor: #statusNoContent!public!status/success! !
!WAResponse class categoriesFor: #statusNonAuthoritativeInformation!public!status/success! !
!WAResponse class categoriesFor: #statusNotAcceptable!public!status/client/error! !
!WAResponse class categoriesFor: #statusNotExtended!public!status/server/error! !
!WAResponse class categoriesFor: #statusNotFound!public!status/client/error! !
!WAResponse class categoriesFor: #statusNotImplemented!public!status/server/error! !
!WAResponse class categoriesFor: #statusNotModified!public!status/redirection! !
!WAResponse class categoriesFor: #statusOk!public!status/success! !
!WAResponse class categoriesFor: #statusPartialContent!public!status/success! !
!WAResponse class categoriesFor: #statusPaymentRequired!public!status/client/error! !
!WAResponse class categoriesFor: #statusPermanentRedirect!public!status/redirection! !
!WAResponse class categoriesFor: #statusPreconditionFailed!public!status/client/error! !
!WAResponse class categoriesFor: #statusPreconditionRequired!public!status/client/error! !
!WAResponse class categoriesFor: #statusProcessing!public!status/informal! !
!WAResponse class categoriesFor: #statusProxyAuthenticationRequired!public!status/client/error! !
!WAResponse class categoriesFor: #statusRequestedRangeNotSatisfiable!public!status/client/error! !
!WAResponse class categoriesFor: #statusRequestEntityTooLarge!public!status/client/error! !
!WAResponse class categoriesFor: #statusRequestHeaderFieldsTooLarge!public!status/client/error! !
!WAResponse class categoriesFor: #statusRequestTimeout!public!status/client/error! !
!WAResponse class categoriesFor: #statusRequestUriTooLong!public!status/client/error! !
!WAResponse class categoriesFor: #statusResetContent!public!status/success! !
!WAResponse class categoriesFor: #statusSeeOther!public!status/redirection! !
!WAResponse class categoriesFor: #statusServiceUnavailable!public!status/server/error! !
!WAResponse class categoriesFor: #statusSwitchingProtocols!public!status/informal! !
!WAResponse class categoriesFor: #statusSwitchProxy!public!status/redirection! !
!WAResponse class categoriesFor: #statusTemporaryRedirect!public!status/redirection! !
!WAResponse class categoriesFor: #statusTooManyRequests!public!status/client/error! !
!WAResponse class categoriesFor: #statusUnauthorized!public!status/client/error! !
!WAResponse class categoriesFor: #statusUnorderedCollection!public!status/client/error! !
!WAResponse class categoriesFor: #statusUnprocessableEntity!public!status/client/error! !
!WAResponse class categoriesFor: #statusUnsupportedMediaType!public!status/client/error! !
!WAResponse class categoriesFor: #statusUpgradeRequired!public!status/client/error! !
!WAResponse class categoriesFor: #statusUseProxy!public!status/redirection! !
!WAResponse class categoriesFor: #statusVariantAlsoNegotiates!public!status/server/error! !

