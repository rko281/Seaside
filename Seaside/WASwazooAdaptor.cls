"Filed out from Dolphin Smalltalk 7"!

WAServerAdaptor subclass: #WASwazooAdaptor
	instanceVariableNames: 'site'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASwazooAdaptor guid: (GUID fromString: '{23520ef8-ff00-49a9-bf1a-4cc19befdd74}')!
WASwazooAdaptor comment: ''!
!WASwazooAdaptor categoriesForClass!Unclassified! !
!WASwazooAdaptor methodsFor!

basicStart
	site port: self port.
	SwazooServer singleton addSite: site.
	site start!

basicStop
	SwazooServer singleton removeSite: site!

convertCookiesFrom: aWAResponse to: aSwazooResponse
	| cookies setCookieField setCookie2Field |
	cookies := aWAResponse cookies.
	cookies isEmpty ifTrue: [ ^self ].
	
	setCookieField := WorkingHTTPSetCookieField new.
	setCookie2Field := WorkingHTTPSetCookie2Field new.

	cookies do: [ :each |
		setCookieField addCookie: each oldNetscapeString.
		setCookie2Field addCookie: each rfc2965String ].
	
	aSwazooResponse headers addField: setCookieField.
	aSwazooResponse headers addField: setCookie2Field!

initialize
	super initialize.
	site := WAPluggableSite
		named: (WAKeyGenerator current keyOfLength: 32)
		on: self.
	site ip: '*'.
	site host: '*'!

isRunning
	^ site isServing!

isStarting
	^ false!

isStopped
	^ site isServing not!

isStopping
	^ false!

postFieldsOf: aNativeRequest into: aRequestFields
	"break encapsulation - This line is likely unnecessary because #requestBodyFor:
		will have already done this after extracting the body."
	aNativeRequest ensureFullRead. ""
	aNativeRequest postData keysAndValuesDo: [ :key :value |
		| previousData data |
		data := value filename isEmptyOrNil
			ifTrue: [ self codec url decode: value value ]
			ifFalse: [
				| isoCodec |
				isoCodec := GRCodec forEncoding: 'ISO-8859-1'.
				WAFile new
					fileName: (self codec url decode: value filename);
					contentType: value contentType seasideMimeType;
					"does a 1:1 mapping from character values to bytes"
					contents: (isoCodec encode: value value) asByteArray;
					yourself ].
		aRequestFields at: key add: data ]!

requestAddressFor: aNativeRequest
	"converts a Squeak address (ByteArray) to an IPv4 String"
	| remoteAddress |
	remoteAddress := aNativeRequest peer.
	remoteAddress isString ifTrue: [
		"so apparently someone has a new VM with IPv6 support"
		^remoteAddress ].
	
	^String streamContents: [ :stream |
		remoteAddress
			do: [ :each | stream print: each ]
			separatedBy: [ stream nextPut: $. ] ]!

requestBodyFor: aNativeRequest
	"This only works for POST and PUT requests... LAME!!"

	aNativeRequest isPost ifTrue: [
		| body |
		"Nasty nastiness but we need to get the raw body before Swazoo parses
		the POST data. Then we need to manually reinject the data to allow it to
		be parsed (since the data has already been pulled off the socket)."
		body := aNativeRequest postData stream nextBytes: aNativeRequest contentLength.
		aNativeRequest parsePostDataFrom: (SwazooStream on: body).
		aNativeRequest postData setParsed.
		^ body ].
	aNativeRequest isPut
		ifTrue: [ ^aNativeRequest putData ].
	^nil!

requestCookiesFor: aNativeRequest
	^ WARequestCookie fromString: aNativeRequest cookie codec: self codec!

requestFieldsFor: aNativeRequest
	| fields |
	fields := WARequestFields new.
	aNativeRequest isPost
		ifTrue: [ self postFieldsOf: aNativeRequest into: fields ].
	^ fields!

requestHeadersFor: aNativeRequest
	| swazooFields fields |
	swazooFields := aNativeRequest headers fields.
	fields := Dictionary new: swazooFields size.
	swazooFields keysAndValuesDo: [ :key :field |
		| value |
		value := String streamContents: [ :stream |
			field valuesAsStringOn: stream ].
		fields at: key asLowercase put: value ].
	^fields!

requestMethodFor: aNativeRequest
	^ aNativeRequest methodName!

requestUrlFor: aNativeRequest
	| url |
	url := ((WAUrl absolute: aNativeRequest uri printString)
		decodedWith: self codec).
	aNativeRequest isEncrypted
		ifTrue: [ url scheme: 'https' ].
	^ url!

requestVersionFor: aNativeRequest
	| array |
	array := aNativeRequest httpVersion.
	^ WAHttpVersion major: array first minor: array second!

responseFrom: aRequestContext 
	| swazooResponse |
	swazooResponse := HTTPResponse new.
	aRequestContext response headers keysAndValuesDo: [ :key :value | 
		key = 'Content-Type' 
			ifTrue: [ swazooResponse contentType: value greaseString ]
			ifFalse: [
				| field fieldClass |
				fieldClass := HeaderField classForFieldName: key.
				field := fieldClass 
					newForFieldName: key
					withValueFrom: value greaseString.
				swazooResponse headers addField: field ] ].
	self 
		convertCookiesFrom: aRequestContext response
		to: swazooResponse.
	swazooResponse code: aRequestContext response status asNumber.
	swazooResponse entity: aRequestContext response contents.
	^ swazooResponse!

shutDown
	SwazooServer stop!

startUp
	SwazooServer start! !
!WASwazooAdaptor categoriesFor: #basicStart!private! !
!WASwazooAdaptor categoriesFor: #basicStop!private! !
!WASwazooAdaptor categoriesFor: #convertCookiesFrom:to:!private! !
!WASwazooAdaptor categoriesFor: #initialize!initialization!public! !
!WASwazooAdaptor categoriesFor: #isRunning!public!testing! !
!WASwazooAdaptor categoriesFor: #isStarting!public!testing! !
!WASwazooAdaptor categoriesFor: #isStopped!public!testing! !
!WASwazooAdaptor categoriesFor: #isStopping!public!testing! !
!WASwazooAdaptor categoriesFor: #postFieldsOf:into:!private! !
!WASwazooAdaptor categoriesFor: #requestAddressFor:!converting-request!public! !
!WASwazooAdaptor categoriesFor: #requestBodyFor:!converting-request!public! !
!WASwazooAdaptor categoriesFor: #requestCookiesFor:!converting-request!public! !
!WASwazooAdaptor categoriesFor: #requestFieldsFor:!converting-request!public! !
!WASwazooAdaptor categoriesFor: #requestHeadersFor:!converting-request!public! !
!WASwazooAdaptor categoriesFor: #requestMethodFor:!converting-request!public! !
!WASwazooAdaptor categoriesFor: #requestUrlFor:!converting-request!public! !
!WASwazooAdaptor categoriesFor: #requestVersionFor:!converting-request!public! !
!WASwazooAdaptor categoriesFor: #responseFrom:!converting!public! !
!WASwazooAdaptor categoriesFor: #shutDown!private! !
!WASwazooAdaptor categoriesFor: #startUp!private! !

!WASwazooAdaptor class methodsFor!

isAbstract
	^ self name = #WABaseServerAdaptor!

resetAll
	"removes all Seaside sites, run this if you run into trouble creating servers"
	| server toRemove |
	server := SwazooServer singleton.
	toRemove := server allSites select: [ :each |
		each isKindOf: WAPluggableSite ].
	toRemove do: [ :each |
		server removeSite: each ]! !
!WASwazooAdaptor class categoriesFor: #isAbstract!public!testing! !
!WASwazooAdaptor class categoriesFor: #resetAll!actions!public! !

