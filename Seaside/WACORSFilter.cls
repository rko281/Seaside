"Filed out from Dolphin Smalltalk"!

WARequestFilter subclass: #WACORSFilter
	instanceVariableNames: 'allowedMethods allowedHeaders exposedHeaders allowsCredentials maxAge allowedOrigin'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACORSFilter guid: (GUID fromString: '{dddeedc5-241c-4b72-9d23-6ad78e874ff5}')!

WACORSFilter comment: 'Implements a WARequestFilter that adds support to handle CORS requests.'!

!WACORSFilter categoriesForClass!Seaside-Core-Filter! !

!WACORSFilter methodsFor!

addAllowedHeader: aString	self allowedHeaders add: aString!

addAllowedHeadersTo: aResponse	self allowedHeaders ifNotEmpty: [ :allowed | 		aResponse			headerAt: 'Access-Control-Allow-Headers'			put: (String streamContents: [ :str | 					 allowed						 do: [ :allow | str nextPutAll: allow ]						 separatedBy: [ str nextPutAll: ', ' ] ]) ]!

addAllowedMethod: httpMethod	self allowedMethods add: httpMethod!

addAllowedMethodsHeadersTo: aResponse	self allowedMethods ifNotEmpty: [ :allowed | 		aResponse			headerAt: 'Access-Control-Allow-Methods'			put: (String streamContents: [ :str | 					 allowed						 do: [ :allow | str nextPutAll: allow ]						 separatedBy: [ str nextPutAll: ', ' ] ]) ]!

addAllowedOriginHeaderTo: aResponse	allowedOrigin ifNotNil: [		aResponse headerAt: 'Access-Control-Allow-Origin' put: allowedOrigin.		allowedOrigin = '*' ifFalse: [ 			aResponse headerAt: 'Vary' put: 'Origin' ] ]!

addAllowsCredentialsHeaderTo: aResponse	(allowsCredentials notNil and: [ allowsCredentials ]) ifTrue: [		aResponse			headerAt: 'Access-Control-Allow-Credentials'			put: allowsCredentials greaseString ]!

addCORSHeadersTo: response	self addAllowedOriginHeaderTo: response.	self addAllowedMethodsHeadersTo: response.	self addExposedHeadersTo: response.	self addAllowedHeadersTo: response.	self addMaxAgeHeaderTo: response.	self addAllowsCredentialsHeaderTo: response!

addExposedHeadersTo: aResponse	self exposedHeaders ifNotEmpty: [ :exposed | 		aResponse			headerAt: 'Access-Control-Expose-Headers'			put: (String streamContents: [ :str | 					 exposed						 do: [ :expose | str nextPutAll: expose ]						 separatedBy: [ str nextPutAll: ', ' ] ]) ]!

addMaxAgeHeaderTo: aResponse	maxAge ifNotNil: [		aResponse			headerAt: 'Access-Control-Max-Age'			put: maxAge greaseString ]!

allowAllHeaders	self removeAllAllowedHeaders.	self addAllowedHeader: '*'!

allowAnyOrigin	self allowedOrigin: '*'!

allowedHeaders 	^ allowedHeaders!

allowedHeaders: anObject	allowedHeaders := anObject!

allowedMethods 	^ allowedMethods!

allowedMethods: anObject	allowedMethods := anObject!

allowedOrigin	^ allowedOrigin!

allowedOrigin: originUrlString	allowedOrigin := originUrlString greaseString!

allowsAnyOrigin	^ allowedOrigin = '*'!

allowsCredentials	^ allowsCredentials!

allowsCredentials: aBoolean	allowsCredentials := aBoolean!

denyAllOrigins	allowedOrigin := nil!

explicitMethods	^ #('GET' 'POST' 'HEAD')!

exposedHeaders 	^ exposedHeaders!

exposedHeaders: aCollection	exposedHeaders := aCollection!

handleCORSFiltered: aRequestContext	self addCORSHeadersTo: aRequestContext response.	super handleFiltered: aRequestContext.!

handleCORSPreflight: aRequestContext	| response |	response := aRequestContext response.	self addCORSHeadersTo: response.	aRequestContext respond!

handleFiltered: aRequestContext	(self isPreflight: aRequestContext request)		ifTrue: [ self handleCORSPreflight: aRequestContext ]		ifFalse: [ 			(self isCORS: aRequestContext request) 				ifTrue: [ self handleCORSFiltered: aRequestContext ]				ifFalse: [ super handleFiltered: aRequestContext ] ]!

initialize 		super initialize.	allowedHeaders := OrderedCollection new.	allowedMethods := OrderedCollection new.	exposedHeaders := OrderedCollection new!

isCORS: aRequest	^ (aRequest headerAt: 'origin') notNil!

isPreflight: aRequest	^ aRequest method = 'OPTIONS' and: [ self isCORS: aRequest ]!

maxAge	^ maxAge!

maxAge: maxAgeInSeconds	maxAge := maxAgeInSeconds!

removeAllAllowedHeaders	self allowedHeaders removeAll!

removeAllMethods	self allowedMethods removeAll!

useExplicitMethods	self allowedMethods addAll: self explicitMethods! !

!WACORSFilter categoriesForMethods!
addAllowedHeader:!headers!public! !
addAllowedHeadersTo:!handling!public! !
addAllowedMethod:!methods!public! !
addAllowedMethodsHeadersTo:!handling!public! !
addAllowedOriginHeaderTo:!handling!public! !
addAllowsCredentialsHeaderTo:!handling!public! !
addCORSHeadersTo:!handling!public! !
addExposedHeadersTo:!handling!public! !
addMaxAgeHeaderTo:!handling!public! !
allowAllHeaders!headers!public! !
allowAnyOrigin!origins!public! !
allowedHeaders!accessing!public! !
allowedHeaders:!accessing!public! !
allowedMethods!accessing!public! !
allowedMethods:!accessing!public! !
allowedOrigin!accessing!public! !
allowedOrigin:!origins!public! !
allowsAnyOrigin!public!testing! !
allowsCredentials!accessing!public! !
allowsCredentials:!accessing!public! !
denyAllOrigins!origins!public! !
explicitMethods!methods!public! !
exposedHeaders!accessing!public! !
exposedHeaders:!accessing!public! !
handleCORSFiltered:!handling!public! !
handleCORSPreflight:!handling!public! !
handleFiltered:!handling!public! !
initialize!initialization!public! !
isCORS:!public!testing! !
isPreflight:!public!testing! !
maxAge!accessing!public! !
maxAge:!accessing!public! !
removeAllAllowedHeaders!headers!public! !
removeAllMethods!methods!public! !
useExplicitMethods!methods!public! !
!

