"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WARequest
	instanceVariableNames: 'method uri version remoteAddress headers cookies body postFields sslSessionId'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARequest guid: (GUID fromString: '{645251ef-b21b-4615-970f-d897fcf67ec6}')!

WARequest comment: 'I am a server independent http request object. Instance of me can be aquired through WAObject >> #currentRequest.Instance Variables	method:			<String>	uri:					<WAUrl>	version:				<WAHttpVersion>	remoteAddress:	<String>	headers:			<Dictionary<String, String>>	cookies:			<Collection<WARequestCookie>>	body:				<String>	postFields:			<WARequestFields>	sslSessionId:		<String>			method	- the HTTP method, should be upper case. In general only ''GET'' and ''POST'' are encountered in Seaside. SqueakSource also supports ''PUT''.		uri	- The request url without parameters. For example if the client requested ''http://www.google.com/search?q=seaside'' then the contents of url would be ''/search''. To get the parameters use #fields. This url is fully decoded. Use the #host method to get the host name. Dependening on the server adapter the #scheme may be ''http'' or ''https'' if the original request was HTTPS.	version	- The version of this request.	remoteAddress	- The IP address of the client. If the server is behind a reverse proxy then this is ''127.0.0.1''. This could in theory also be an IPv6 address.headers	- The header of the HTTP request. This is a Dictionary mapping lowercase strings to other strings.	cookies	- The collection of cookies (instance of WARequestCookie) the client sent. Note not all clients support all fields. E.g. you might send a path but the client might not return it. Note there can be several cookies with the same key but a different domain or path. See the #cookiesAt: method.	body	- The undecoded, raw request body as a String, may be nil. See the "accessing-body" protocol for accessing it.	postFields	- The HTTP POST request parameters. In general this is a dictionary mapping Strings to Strings. In the case of multivalued paramters multiple mappings may exist.	sslSessionId	- The SSL session id. This is an opaque string. It is not present if the request wasn''t made over SSL (or TLS) or the server adaptor does not support this feature.'!

!WARequest categoriesForClass!Seaside-Core-HTTP! !

!WARequest methodsFor!

accept	"The Accept request-header field can be used to specify certain media types which are acceptable for the response. Accept headers can be used to indicate that the request is specifically limited to a small set of desired types, as in the case of a request for an in-line image.		Answers an OrderedCollection of WAAccept with the values in the order the client sent them."	^ WAAccept fromString: (self headerAt: 'accept' ifAbsent: [ ^ nil ])!

acceptCharset	"The Accept-Charset request-header field can be used to indicate what character sets are acceptable for the response. This field allows clients capable of understanding more comprehensive or special- purpose character sets to signal that capability to a server which is capable of representing documents in those character sets.		Answers an OrderedCollection of WAAcceptCharset with the values in the order the client sent them."	^ WAAcceptCharset fromString: (self headerAt: 'accept-charset' ifAbsent: [ ^ nil ])!

acceptEncoding	"The Accept-Encoding request-header field is similar to Accept, but restricts the content-codings (section 3.5) that are acceptable in the response.		Answers an OrderedCollection of WAAcceptEncoding with the values in the order the client sent them."	^ WAAcceptEncoding fromString: (self headerAt: 'accept-encoding' ifAbsent: [ ^ nil ])!

acceptLanguage	"The Accept-Language request-header field is similar to Accept, but restricts the set of natural languages that are preferred as a response to the request.		Answers an OrderedCollection of WAAcceptLanguage with the values in the order the client sent them."	^ WAAcceptLanguage fromString: (self headerAt: 'accept-language' ifAbsent: [ ^ nil ])!

at: key	^ self fields at: key!

at: key ifAbsent: aBlock	^ self fields at: key ifAbsent: aBlock!

at: key ifPresent: aBlock	^ self fields at: key ifPresent: aBlock!

authorization	"Answer the basic authorization string from the request. This is the username and the password separated by a colon."		| authorization |	authorization := self headerAt: 'authorization'.	^ authorization isNil ifFalse: [ self decodeAuthorization: authorization ]!

bodyDecoded	"Answer the body decoded using the character set in the request header. Answer nil if no body is present. Signal an error if not character set is present in the request header."	| contentType charSet |	contentType := self contentType.	charSet := contentType isNil ifFalse: [ contentType charSet ].	^ charSet isNil		ifTrue: [ WAIllegalStateException signal: 'no character set of request body can not be determined' ]		ifFalse: [ self bodyDecodeUsing: charSet ]!

bodyDecodeUsing: aCharSetName 	"Answer the body decoded using the given character set name. Answer nil if there's no body."	^ body isNil ifFalse: [ (GRCodec forEncoding: aCharSetName) decode: body ]!

contentType	"The Content-Type entity-header field indicates the media type of the entity-body sent to the recipient or, in the case of the HEAD method, the media type that would have been sent had the request been a GET.		Answer an instance of WAMimeType or nil."		| contentType |	contentType := self headerAt: 'content-type'.	^ contentType isNil ifFalse: [ WAMimeType fromString: contentType ]!

cookieAt: aKey	"Answer the first found cookie with the given key, there might be several cookies with the name key but different paths, in this case use #cookiesAt:."	^ self cookies		detect: [ :each | each key = aKey ]		ifNone: [ nil ]!

cookies	^ cookies ifNil: [ #() ]!

cookiesAt: aKey	"Answer all the cookies with the given key."		^ self cookies		select: [ :each | each key = aKey ]!

decodeAuthorization: aString	| lastSpaceIndex |	lastSpaceIndex := aString lastIndexOf: $ .	^ GRPlatform current base64Decode: (lastSpaceIndex = 0		ifTrue: [ aString ]		ifFalse: [ aString copyFrom: lastSpaceIndex + 1to: aString size ])!

destroy	body := method := uri := version := postFields := remoteAddress := headers := cookies := nil!

fields	^ WAMergedRequestFields on: (Array with: self queryFields with: self postFields)!

forwarded	^ self headerAt: 'forwarded'!

forwardedFor	"Returns the value of the first occurrence of the For directive in a forwarded header, if it exists. Returns nil otherwise."	| startOfFirstForDirective endOfFirstForDirective |	^ self forwarded ifNotNil:[ :forwarded | 		startOfFirstForDirective := forwarded indexOfSubCollection:'for=' startingAt: 1.		startOfFirstForDirective = 0 ifTrue:[ startOfFirstForDirective := forwarded indexOfSubCollection:'For=' startingAt: 1 ].		startOfFirstForDirective ~= 0			ifTrue:[ 				endOfFirstForDirective := (forwarded indexOfAnyOf: ';,' startingAt: startOfFirstForDirective) - 1.				endOfFirstForDirective = -1 ifTrue:[ endOfFirstForDirective := forwarded size ].				forwarded copyFrom: startOfFirstForDirective + 4 to: endOfFirstForDirective ]			ifFalse: [ nil ] ]!

headerAt: aKey	^ self headerAt: aKey ifAbsent: [ nil ]!

headerAt: aKey ifAbsent: aBlock

	"Dolphin modified - Dolphin server headers may not match case of aKey. Fallback to search (pending change to server code)"
	^ headers at: aKey ifAbsent: 
		[(headers keys detect: [ :each | aKey match: each] ifNone: [nil]) 
			ifNil: [aBlock value] 
			ifNotNil: [ :key | headers at: key]]!

headers	^ headers!

host	^ self headerAt: 'host'!

ifNoneMatch	"The If-None-Match HTTP request header makes the request conditional."	^ self headerAt: 'if-none-match' ifAbsent: [ nil ]!

includesKey: key	^ self fields includesKey: key!

initializeWithMethod: methodString uri: aUrlOrString version: aVersion	self initialize.	method := methodString asUppercase.	uri := aUrlOrString seasideUrl.	version := aVersion.	headers := WAHeaderFields new.	postFields := WARequestFields new.	cookies := OrderedCollection new.	remoteAddress := nil!

isGet	^ self method = 'GET'!

isHttp10	^ version isHttp10!

isHttp11	^ version isHttp11!

isPost	^ self method = 'POST'!

isPrefetch	"Link prefetching is a browser mechanism, which utilizes browser idle time to download or prefetch documents that the user might visit in the near future. When the user visits one of the prefetched documents, it can be served up quickly out of the browser's cache."		^ (self headerAt: 'x-moz') = 'prefetch'!

isSsl	^ self uri isSsl!

isWebSocketSetupRequest	"Return true when request can be considered a valid WebSocket setup request"	^ self isGet			and: [ (self headerAt: 'upgrade' ifAbsent: [ ^ false ]) asLowercase = 'websocket' 				and: [ ((self headerAt: 'connection' ifAbsent: [ ^ false ]) asLowercase includesSubstring: 'upgrade')					and: [ (self headerAt: 'sec-websocket-version' ifAbsent: [ ^ false ]) = '13'						and: [ self headers includesKey: 'sec-websocket-key' ] ] ] ]!

isXmlHttpRequest	^ (self headerAt: 'x-requested-with') = 'XMLHttpRequest'!

method	^ method!

password	"Answer the password from basic authentication."		| authorization |	^ (authorization := self authorization) isNil		ifFalse: [ authorization copyAfter: $: ]!

postFields	^ postFields!

printOn: aStream 	super printOn: aStream.	aStream		nextPutAll: ' method: ';		nextPutAll: self method.	aStream		nextPutAll: ' uri: ';		nextPutAll: self uri greaseString.	aStream nextPutAll: ' version: '.	self version printOn: aStream!

queryFields	^ self uri queryFields!

rawBody	"Answer the raw, undecoded body. May be nil.		Use #bodyDecoded or #bodyDecodeUsing: to access the decoded contents."	^ body!

referer	^ self headerAt: 'referer'!

remoteAddress	"answer the IP address of the client (String)"	^ remoteAddress!

setBody: aString	body := aString!

setCookies: cookieCollection	cookies := cookieCollection!

setHeaders: headerDictionary	headers := headerDictionary!

setPostFields: aRequestFields	postFields := aRequestFields seasideRequestFields!

setRemoteAddress: addressString	remoteAddress := addressString!

setSslSessionId: anSslSessionIdString	sslSessionId := anSslSessionIdString!

sslSessionId	"Answer the SSL session id or nil if the request wasn't made over SSL or the server adaptor does not support it (String).		See also #isSsl"	^ sslSessionId!

uri	^ uri!

url	^ self uri!

user	"Answer the username from basic authentication."		| authorization |	^ (authorization := self authorization) isNil		ifFalse: [ authorization copyUpTo: $: ]!

userAgent	^ self headerAt: 'user-agent'!

version	^ version!

version: aVersion	version := aVersion! !

!WARequest categoriesForMethods!
accept!accessing/headers!public! !
acceptCharset!accessing/headers!public! !
acceptEncoding!accessing/headers!public! !
acceptLanguage!accessing/headers!public! !
at:!accessing!public! !
at:ifAbsent:!accessing!public! !
at:ifPresent:!accessing!public! !
authorization!accessing/headers!public! !
bodyDecoded!accessing/body!public! !
bodyDecodeUsing:!accessing/body!public! !
contentType!accessing/headers!public! !
cookieAt:!accessing/cookies!public! !
cookies!accessing/cookies!public! !
cookiesAt:!accessing/cookies!public! !
decodeAuthorization:!private! !
destroy!initialization!public! !
fields!accessing!public! !
forwarded!accessing/headers!public! !
forwardedFor!accessing!public! !
headerAt:!accessing!public! !
headerAt:ifAbsent:!accessing!dolphin seaside patches!public! !
headers!accessing!public! !
host!accessing/headers!public! !
ifNoneMatch!accessing/headers!public! !
includesKey:!public!testing! !
initializeWithMethod:uri:version:!initialization!public! !
isGet!public!testing! !
isHttp10!public!testing! !
isHttp11!public!testing! !
isPost!public!testing! !
isPrefetch!public!testing! !
isSsl!public!testing! !
isWebSocketSetupRequest!public!testing! !
isXmlHttpRequest!public!testing! !
method!accessing!public! !
password!accessing!public! !
postFields!accessing/body!public! !
printOn:!printing!public! !
queryFields!accessing!public! !
rawBody!accessing/body!public! !
referer!accessing/headers!public! !
remoteAddress!accessing!public! !
setBody:!initialization!public! !
setCookies:!initialization!public! !
setHeaders:!initialization!public! !
setPostFields:!initialization!public! !
setRemoteAddress:!initialization!public! !
setSslSessionId:!initialization!public! !
sslSessionId!accessing!public! !
uri!accessing!public! !
url!accessing!public! !
user!accessing!public! !
userAgent!accessing/headers!public! !
version!accessing!public! !
version:!accessing!public! !
!

!WARequest class methodsFor!

defaultMethod	^ 'GET'!

defaultUri	^ '/' seasideUrl!

defaultVersion	^ WAHttpVersion http11!

method: methodString uri: aUrlOrString	^ self method: methodString uri: aUrlOrString version: self defaultVersion!

method: methodString uri: aUrlOrString version: aVersion	^ self basicNew		initializeWithMethod: methodString			uri: aUrlOrString			version: aVersion;		yourself!

new	^ self		method: self defaultMethod		uri: self defaultUri		version: self defaultVersion! !

!WARequest class categoriesForMethods!
defaultMethod!configuration!public! !
defaultUri!configuration!public! !
defaultVersion!configuration!public! !
method:uri:!instance creation!public! !
method:uri:version:!instance creation!public! !
new!instance creation!public! !
!

