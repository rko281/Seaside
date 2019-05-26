"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WARequest
	instanceVariableNames: 'method uri version remoteAddress headers cookies body postFields sslSessionId'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARequest guid: (GUID fromString: '{3db2b28a-ffde-42f8-b417-8fcb7201b540}')!
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

headerAt: aKey	^ self headerAt: aKey ifAbsent: [ nil ]!

headerAt: aKey ifAbsent: aBlock	^ headers at: aKey ifAbsent: aBlock!

headers	^ headers!

host	^ self headerAt: 'host'!

includesKey: key	^ self fields includesKey: key!

initializeWithMethod: methodString uri: aUrlOrString version: aVersion	self initialize.	method := methodString asUppercase.	uri := aUrlOrString seasideUrl.	version := aVersion.	headers := WAHeaderFields new.	postFields := WARequestFields new.	cookies := OrderedCollection new.	remoteAddress := nil!

isGet	^ self method = 'GET'!

isHttp10	^ version isHttp10!

isHttp11	^ version isHttp11!

isPost	^ self method = 'POST'!

isPrefetch	"Link prefetching is a browser mechanism, which utilizes browser idle time to download or prefetch documents that the user might visit in the near future. When the user visits one of the prefetched documents, it can be served up quickly out of the browser's cache."		^ (self headerAt: 'x-moz') = 'prefetch'!

isSsl	^ self uri isSsl!

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
!WARequest categoriesFor: #accept!accessing/headers!public! !
!WARequest categoriesFor: #acceptCharset!accessing/headers!public! !
!WARequest categoriesFor: #acceptEncoding!accessing/headers!public! !
!WARequest categoriesFor: #acceptLanguage!accessing/headers!public! !
!WARequest categoriesFor: #at:!accessing!public! !
!WARequest categoriesFor: #at:ifAbsent:!accessing!public! !
!WARequest categoriesFor: #at:ifPresent:!accessing!public! !
!WARequest categoriesFor: #authorization!accessing/headers!public! !
!WARequest categoriesFor: #bodyDecoded!accessing/body!public! !
!WARequest categoriesFor: #bodyDecodeUsing:!accessing/body!public! !
!WARequest categoriesFor: #contentType!accessing/headers!public! !
!WARequest categoriesFor: #cookieAt:!accessing/cookies!public! !
!WARequest categoriesFor: #cookies!accessing/cookies!public! !
!WARequest categoriesFor: #cookiesAt:!accessing/cookies!public! !
!WARequest categoriesFor: #decodeAuthorization:!private! !
!WARequest categoriesFor: #destroy!initialization!public! !
!WARequest categoriesFor: #fields!accessing!public! !
!WARequest categoriesFor: #headerAt:!accessing!public! !
!WARequest categoriesFor: #headerAt:ifAbsent:!accessing!public! !
!WARequest categoriesFor: #headers!accessing!public! !
!WARequest categoriesFor: #host!accessing/headers!public! !
!WARequest categoriesFor: #includesKey:!public!testing! !
!WARequest categoriesFor: #initializeWithMethod:uri:version:!initialization!public! !
!WARequest categoriesFor: #isGet!public!testing! !
!WARequest categoriesFor: #isHttp10!public!testing! !
!WARequest categoriesFor: #isHttp11!public!testing! !
!WARequest categoriesFor: #isPost!public!testing! !
!WARequest categoriesFor: #isPrefetch!public!testing! !
!WARequest categoriesFor: #isSsl!public!testing! !
!WARequest categoriesFor: #isXmlHttpRequest!public!testing! !
!WARequest categoriesFor: #method!accessing!public! !
!WARequest categoriesFor: #password!accessing!public! !
!WARequest categoriesFor: #postFields!accessing/body!public! !
!WARequest categoriesFor: #printOn:!printing!public! !
!WARequest categoriesFor: #queryFields!accessing!public! !
!WARequest categoriesFor: #rawBody!accessing/body!public! !
!WARequest categoriesFor: #referer!accessing/headers!public! !
!WARequest categoriesFor: #remoteAddress!accessing!public! !
!WARequest categoriesFor: #setBody:!initialization!public! !
!WARequest categoriesFor: #setCookies:!initialization!public! !
!WARequest categoriesFor: #setHeaders:!initialization!public! !
!WARequest categoriesFor: #setPostFields:!initialization!public! !
!WARequest categoriesFor: #setRemoteAddress:!initialization!public! !
!WARequest categoriesFor: #setSslSessionId:!initialization!public! !
!WARequest categoriesFor: #sslSessionId!accessing!public! !
!WARequest categoriesFor: #uri!accessing!public! !
!WARequest categoriesFor: #url!accessing!public! !
!WARequest categoriesFor: #user!accessing!public! !
!WARequest categoriesFor: #userAgent!accessing/headers!public! !
!WARequest categoriesFor: #version!accessing!public! !
!WARequest categoriesFor: #version:!accessing!public! !

!WARequest class methodsFor!

defaultMethod	^ 'GET'!

defaultUri	^ '/' seasideUrl!

defaultVersion	^ WAHttpVersion http11!

method: methodString uri: aUrlOrString	^ self method: methodString uri: aUrlOrString version: self defaultVersion!

method: methodString uri: aUrlOrString version: aVersion	^ self basicNew		initializeWithMethod: methodString			uri: aUrlOrString			version: aVersion;		yourself!

new	^ self		method: self defaultMethod		uri: self defaultUri		version: self defaultVersion! !
!WARequest class categoriesFor: #defaultMethod!configuration!public! !
!WARequest class categoriesFor: #defaultUri!configuration!public! !
!WARequest class categoriesFor: #defaultVersion!configuration!public! !
!WARequest class categoriesFor: #method:uri:!instance creation!public! !
!WARequest class categoriesFor: #method:uri:version:!instance creation!public! !
!WARequest class categoriesFor: #new!instance creation!public! !

