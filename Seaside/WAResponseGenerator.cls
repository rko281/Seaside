"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAResponseGenerator
	instanceVariableNames: 'requestContext'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAResponseGenerator guid: (GUID fromString: '{78c57b6f-a1ec-4cea-9665-d5fb9bbd2ffc}')!
WAResponseGenerator comment: 'The response generator configures the response of the provided request context according to the called generation method. This class can be subclassed to provide custom response templates.'!
!WAResponseGenerator categoriesForClass!Seaside-Core-RequestHandling! !
!WAResponseGenerator methodsFor!

authenticate: aString	"Asks for authentication to the domain aString."	self ifResetPossible: [		self response basicAuthenticationRealm: aString ]!

expiredRegistryKey	"The session key has expired, redirect the request to the home directory preserving the path as good as possible."	| url |	self request isXmlHttpRequest		ifTrue: [ ^ self forbidden ].	url := self requestContext registry url.	url addAllToPath: self requestContext consumer upToEnd.	self request fields keysAndValuesDo: [ :key :value |		(url isSeasideField: key) 			ifFalse: [ url addField: key value: value ] ].	self redirectTo: url!

forbidden	"The resource is forbidden to access and the request was not processed."	| response |	self makePlainTextAndPerform: #forbidden.	response := self response.	response nextPutAll: 'Error: you are forbidden to access "'.	self request url pathUnencodedOn: response.	response nextPutAll: '"'!

ifResetPossible: aBlock	self response resetIfPossible ifTrue: [		aBlock value ]!

initializeOn: aRequestContext	self initialize.	requestContext := aRequestContext!

internalError: anException	"An internal error occurred while processing the request."	self makePlainTextAndPerform: #internalError.	self response		nextPutAll: 'Internal Error: ';		nextPutAll: (anException messageText ifNil: [ String new ])!

makePlainTextAndPerform: aSelector	"Changes the content type to text/plain and then performs the selector if possible."	self ifResetPossible: [		| mimeType response |		response := self response.		response perform: aSelector.		mimeType := WAMimeType textPlain.		mimeType charset: self requestContext charSet.		response contentType: mimeType ]!

notFound	"The resource could not be found and the request processing was aborted."	| response |	self makePlainTextAndPerform: #notFound.	response := self response.	self request url pathUnencodedOn: response.	response nextPutAll: ' not found'!

notImplemented	"The functionality requested is not implemented and the request processing was aborted."	self makePlainTextAndPerform: #notImplemented.	self response		nextPutAll: 'Not Implemented'!

pageExpired	"The page is no longer in the cache and the request could not be processed."	self makePlainTextAndPerform: #doNotCache.	self response		nextPutAll: 'This page has expired, please use the back-button to navigate to the last valid page.'!

redirectTo: aUrlOrString	"Redirect to a new location."		| oldCookies |	"resetting the response also resets the cookies	however in the case of a redirect we want to keep the cookies	(for adding and deleting session cookies)"	oldCookies := self response cookies.	self ifResetPossible: [		oldCookies do: [ :each |			self response addCookie: each ].		self response			redirectTo: aUrlOrString ]!

refreshAfter: aDuration location: aUrl message: aString 	"Show aString for aDuration, then redirect to aUrl."	self ifResetPossible: [		| mimeType |		mimeType := WAMimeType textPlain.		mimeType charSet: self request charSet.		self response			contentType: mimeType;			refreshAfter: aDuration				location: aUrl				message: aString , (String with: Character cr) , 'You are being redirected to ' , aUrl greaseString ]!

request	"Answer the current request."	^ self requestContext request!

requestContext	"Answer the current request context."	^ requestContext!

respond	"Tell the current request context to return the response."	self requestContext respond!

response	"Answer the current response."	^ self requestContext response! !
!WAResponseGenerator categoriesFor: #authenticate:!generation!public! !
!WAResponseGenerator categoriesFor: #expiredRegistryKey!generation!public! !
!WAResponseGenerator categoriesFor: #forbidden!generation!public! !
!WAResponseGenerator categoriesFor: #ifResetPossible:!private! !
!WAResponseGenerator categoriesFor: #initializeOn:!initialization!public! !
!WAResponseGenerator categoriesFor: #internalError:!generation!public! !
!WAResponseGenerator categoriesFor: #makePlainTextAndPerform:!private! !
!WAResponseGenerator categoriesFor: #notFound!generation!public! !
!WAResponseGenerator categoriesFor: #notImplemented!generation!public! !
!WAResponseGenerator categoriesFor: #pageExpired!generation!public! !
!WAResponseGenerator categoriesFor: #redirectTo:!generation!public! !
!WAResponseGenerator categoriesFor: #refreshAfter:location:message:!generation!public! !
!WAResponseGenerator categoriesFor: #request!accessing!public! !
!WAResponseGenerator categoriesFor: #requestContext!accessing!public! !
!WAResponseGenerator categoriesFor: #respond!actions!public! !
!WAResponseGenerator categoriesFor: #response!accessing!public! !

!WAResponseGenerator class methodsFor!

on: aRequestContext	^ self basicNew initializeOn: aRequestContext! !
!WAResponseGenerator class categoriesFor: #on:!instance creation!public! !

