"Filed out from Dolphin Smalltalk"!

WARequestFilter subclass: #WACORSFilter
	instanceVariableNames: 'allowedOrigins allowedMethods allowedHeaders exposedHeaders allowsCredentials'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACORSFilter guid: (GUID fromString: '{5b2eeadb-32f4-403b-bad1-af2444bb40dd}')!

WACORSFilter comment: 'Implements a WARequestFilter that adds support to handle CORS requests.'!

!WACORSFilter categoriesForClass!Filter! !

!WACORSFilter methodsFor!

addAllowedMethod: httpMethod	self allowedMethods add: httpMethod!

addAllowedMethodsHeadersTo: aResponse	self allowedMethods ifNotEmpty: [ :allowed | 		aResponse			headerAt: 'Access-Control-Allow-Methods'			put: (String streamContents: [ :str | 					 allowed						 do: [ :allow | str nextPutAll: allow ]						 separatedBy: [ str nextPutAll: ', ' ] ]) ]!

addAllowedOrigin: originUrlString	self allowedOrigins add: originUrlString asString!

addAllowedOriginHeadersTo: aResponse	self allowedOrigins ifNotEmpty: [ :allowed | 		| allowedOrigin |		allowedOrigin := allowed first.		aResponse headerAt: 'Access-Control-Allow-Origin' put: allowedOrigin.		allowedOrigin = '*' ifFalse: [ 			aResponse headerAt: 'Vary' put: 'Origin' ] ]!

addCORSHeadersTo: response	self addAllowedOriginHeadersTo: response.	self addAllowedMethodsHeadersTo: response!

addExposedHeadersTo: aResponse	self exposedHeaders ifNotEmpty: [ :exposed | 		aResponse			headerAt: 'Access-Control-Expose-Headers'			put: (String streamContents: [ :str | 					 exposed						 do: [ :expose | str nextPutAll: expose ]						 separatedBy: [ str nextPutAll: ', ' ] ]) ]!

allowAnyOrigin	self addAllowedOrigin: '*'!

allowedHeaders 	^ allowedHeaders!

allowedHeaders: anObject	allowedHeaders := anObject!

allowedMethods 	^ allowedMethods!

allowedMethods: anObject	allowedMethods := anObject!

allowedOrigins 	^ allowedOrigins ifNil: [ allowedOrigins := OrderedCollection new ]!

allowedOrigins: anObject	allowedOrigins := anObject!

allowsAnyOrigin	^ self allowedOrigins anySatisfy: [ :origin | origin = '*' ]!

allowsCredentials	^ allowsCredentials!

allowsCredentials: anObject	allowsCredentials := anObject!

denyAllOrigins	self allowedOrigins removeAll!

explicitMethods	^ #('GET' 'POST' 'HEAD')!

exposedHeaders 	^ exposedHeaders!

exposedHeaders: anObject	exposedHeaders := anObject!

handleCORSFiltered: aRequestContext	self addCORSHeadersTo: aRequestContext response.	super handleFiltered: aRequestContext.!

handleCORSPreflight: aRequestContext	| response |	response := aRequestContext response.	self addCORSHeadersTo: response.	aRequestContext respond!

handleFiltered: aRequestContext	"Pass on the aRequestContext to the next filter or handler. Subclasses might override this method to customize the request and response handling."	(self isPreflight: aRequestContext request)		ifTrue: [ self handleCORSPreflight: aRequestContext ]		ifFalse: [ 			(self isCORS: aRequestContext request) 				ifTrue: [ self handleCORSFiltered: aRequestContext ]				ifFalse: [ super handleFiltered: aRequestContext ] ]!

initialize 		super initialize.	allowedOrigins := OrderedCollection new.	allowedHeaders := OrderedCollection new.	allowedMethods := OrderedCollection new.	exposedHeaders := OrderedCollection new.	allowsCredentials := false!

isCORS: aRequest	^ (aRequest headerAt: 'origin') notNil!

isPreflight: aRequest	^ aRequest method = 'OPTIONS' and: [ self isCORS: aRequest ]!

removeAllMethods	self allowedMethods removeAll!

removeAllowedOrigin: originUrlString	self allowedOrigins remove: originUrlString asString ifAbsent: [ ]!

useExplicitMethods	self allowedMethods addAll: self explicitMethods! !

!WACORSFilter categoriesForMethods!
addAllowedMethod:!methods!public! !
addAllowedMethodsHeadersTo:!headers!public! !
addAllowedOrigin:!origins!public! !
addAllowedOriginHeadersTo:!headers!public! !
addCORSHeadersTo:!headers!public! !
addExposedHeadersTo:!headers!public! !
allowAnyOrigin!origins!public! !
allowedHeaders!accessing!public! !
allowedHeaders:!accessing!public! !
allowedMethods!accessing!public! !
allowedMethods:!accessing!public! !
allowedOrigins!accessing!public! !
allowedOrigins:!accessing!public! !
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
initialize!private! !
isCORS:!public!testing! !
isPreflight:!public!testing! !
removeAllMethods!methods!public! !
removeAllowedOrigin:!origins!public! !
useExplicitMethods!methods!public! !
!

