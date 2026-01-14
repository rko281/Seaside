"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WARequestHandler
	instanceVariableNames: 'filter parent configuration'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARequestHandler guid: (GUID fromString: '{d9bb0baf-cfa7-4011-a83a-2e7bdd999d82}')!

WARequestHandler comment: 'WARequestHandler is an abstract class whose subclasses handle http requests. Most of the methods are either empty or return a default value. Subclasses must implement the following messages:	handleFiltered:	process the request'!

!WARequestHandler categoriesForClass!Seaside-Core-RequestHandling! !

!WARequestHandler methodsFor!

addFilter: aFilter	"Add aFilter to the receiver. Answer the filter added."	^ self addFilterLast: aFilter!

addFilterFirst: aFilter	"Add aFilter as the first one in the filter chain. Answer the filter added."	aFilter setNext: self filter.	self setFilter: aFilter.	^ aFilter!

addFilterLast: aFilter	"Add aFilter as the last one in the filter chain. Answer the filter added."	| previous current |	previous := nil.	current := self filter.	[ current = self ] whileFalse: [		previous := current.		current := current next ].	aFilter setNext: current.	previous isNil		ifTrue: [ self setFilter: aFilter ]		ifFalse: [ previous setNext: aFilter ].	^ aFilter!

authConfigurationError: aString	WAAuthConfigurationError signal: aString!

basicUrl	^ self isRoot		ifTrue: [ WAUrl new ]		ifFalse: [ self parent urlFor: self ]!

charSet	^ self preferenceAt: #charSet!

childrenDo: aBlock	"Request handlers that act as containers should implement this method to	iterate over all child handlers and pass each into aBlock."!

configuration	^ configuration!

configuration: aConfiguration	configuration := aConfiguration!

copyTo: aRequestHandler	^ aRequestHandler!

defaultConfiguration	^ WAUserConfiguration new		addParent: WARequestHandlingConfiguration instance;		yourself!

documentClass	^ (self preferenceAt: #documentClass) value!

exceptionHandler: anExceptionHandlerClass	| theFilter |	theFilter := self filters		detect: [ :ea | ea isExceptionFilter ]		ifNone: [ self addFilter: WAExceptionFilter new ].		theFilter configuration at: #exceptionHandler put: anExceptionHandlerClass!

filter	^ filter contents!

filters	"Answer an ordered collection of all filters active in the receiver."		| current result |	current := self filter.	result := OrderedCollection new.	[ current = self ] whileFalse: [		result add: current.		current := current next ].	^ result!

handle: aRequestContext	"Handle a request described by aRequestContext. Do not override this method; instead subclass #handleFiltered: to allow filters to process the request first."	aRequestContext push: self during: [ self filter handleFiltered: aRequestContext ]!

handleFiltered: aRequestContext 	"Handle aRequestContext by either dispatching to a different request handler of by producing a response and signalling the result."	self subclassResponsibility!

handler	^ self!

initialize	super initialize.	configuration := self defaultConfiguration.	filter := WAValueHolder with: self!

isDispatcher	^ false!

isRegistry	^ false!

isRoot	^ self parent isNil!

name	^ self isRoot		ifTrue: [ '' ]		ifFalse: [ self parent nameOfHandler: self ]!

parent	^ parent!

parentChildPairsDo: aTwoArgumentBlock	"Evaluate the given two argument block for all the direct parent-child handler pairs in the handler chain up the receiver."	self parent isNil ifFalse: [		self parent parentChildPairsDo: aTwoArgumentBlock.		aTwoArgumentBlock value: self parent value: self ]!

postCopy	super postCopy.	filter := filter copy.	self setFilter: (self filter copyTo: self).	configuration := configuration copy.	parent := nil!

preferenceAt: aSymbol	^ self configuration at: aSymbol!

preferenceAt: aSymbol ifAbsent: aBlock	^ self configuration at: aSymbol ifAbsent: aBlock!

preferenceAt: aSymbol put: anObject	anObject isNil		ifTrue: [ self configuration removeExpressionAt: aSymbol ]		ifFalse: [ self configuration at: aSymbol put: anObject ].		^ anObject!

removeFilter: aFilter	"Remove aFilter from the receiver. Answer the removed filter or nil."	| previous current |	previous := nil.	current := self filter.	[ current = self ] whileFalse: [		current = aFilter ifTrue: [			previous isNil				ifTrue: [ self setFilter: current next ]				ifFalse: [ previous setNext: current next ].			^ aFilter setNext: nil ].		previous := current.		current := current next ].	^ nil!

responseGenerator	^ (self preferenceAt: #responseGenerator) value!

scriptGeneratorClass	^ (self preferenceAt: #scriptGeneratorClass) value!

scriptGeneratorClass: aClass	self preferenceAt: #scriptGeneratorClass put: (GRPlatform current bindingOf: aClass)!

serverHostname	^ self preferenceAt: #serverHostname!

serverHostname: aString	self preferenceAt: #serverHostname put: aString!

serverPath	^ self preferenceAt: #serverPath!

serverPath: aString	self preferenceAt: #serverPath put: aString!

serverPort	^ self preferenceAt: #serverPort!

serverPort: anInteger	self preferenceAt: #serverPort put: anInteger!

serverProtocol	^ self preferenceAt: #serverProtocol!

serverProtocol: aSymbol	self preferenceAt: #serverProtocol put: aSymbol!

setFilter: aFilter	filter contents: aFilter!

setParent: aRequestHandler	parent notNil ifTrue: [ parent unregister: self ].	parent := aRequestHandler!

unregister	"Unregister this request handler from its parent handler."		parent notNil ifTrue: [ parent unregister: self ]!

unregister: aRequestHandler	"Request handlers that act as containers should implement this method to	remove aRequestHandler from their collections and send #unregistered to	aRequestHandler. This method is also called by #setParent:."!

unregistered	"This method is called to notify a RequestHandler that it has been removed	from its container. Subclasses should override to perfrom cleanup actions."	parent := nil!

url	| url |		url := self basicUrl.	self serverPath isNil ifFalse: [ url parsePath: self serverPath ].	self serverProtocol isNil ifFalse: [ url scheme: self serverProtocol ].	self serverHostname isNil ifFalse: [ url host: self serverHostname ].	self serverPort isNil ifFalse: [ url port: self serverPort ].	^ url!

urlFor: aRequestHandler	"Return the URL for the given request handler, which should be a	child of the receiver. The default implementation simply returns the	receiver's URL, but subclasses should override to add a relevant	parameter or path segment that identifies the particular chid."	^ self url!

verifyPassword: password forUser: username 	"This method is called by WAAuthMain to verify the username provided	in the HTTP request. The default implementation compares them against	the configuration values provided by WAAuthConfiguration. WAAuthMain	can also be used by itself if you implement this method in your	own Application subclass to do something different."	| loginPreference hashPreference |	loginPreference := self preferenceAt: #login.	hashPreference := self preferenceAt: #passwordHash.	loginPreference isNil ifTrue: [		self authConfigurationError: 'Login not defined. The default authentication method requires a WAAuthConfiguration' ].	hashPreference isNil ifTrue: [		self authConfigurationError: 'Password not defined. The default authentication method requires a WAAuthConfiguration' ].	^ username isEmptyOrNil not		and: [ password isEmptyOrNil not		and: [ loginPreference = username		and: [ hashPreference = (GRPlatform current secureHashFor: password) ] ] ]!

withDescendantsDo: aBlock	"Evaluate aBlock for this request handler and recursively for each of	its child handlers."		aBlock value: self.	self childrenDo: [ :each | each withDescendantsDo: aBlock ]! !

!WARequestHandler categoriesForMethods!
addFilter:!filters!public! !
addFilterFirst:!filters!public! !
addFilterLast:!filters!public! !
authConfigurationError:!private! !
basicUrl!private! !
charSet!configuration!public! !
childrenDo:!parent/child!public! !
configuration!configuration!public! !
configuration:!configuration!public! !
copyTo:!copying!public! !
defaultConfiguration!configuration!public! !
documentClass!configuration!public! !
exceptionHandler:!filters/convenience!public! !
filter!private/accessing!public! !
filters!filters!public! !
handle:!handling!public! !
handleFiltered:!handling!public! !
handler!filters!public! !
initialize!initialization!public! !
isDispatcher!public!testing! !
isRegistry!public!testing! !
isRoot!public!testing! !
name!accessing!public! !
parent!accessing!public! !
parentChildPairsDo:!enumerating!public! !
postCopy!copying!public! !
preferenceAt:!configuration!public! !
preferenceAt:ifAbsent:!configuration!public! !
preferenceAt:put:!configuration!public! !
removeFilter:!filters!public! !
responseGenerator!configuration!public! !
scriptGeneratorClass!configuration!public! !
scriptGeneratorClass:!configuration!public! !
serverHostname!configuration!public! !
serverHostname:!configuration!public! !
serverPath!configuration!public! !
serverPath:!configuration!public! !
serverPort!configuration!public! !
serverPort:!configuration!public! !
serverProtocol!configuration!public! !
serverProtocol:!configuration!public! !
setFilter:!private/accessing!public! !
setParent:!parent/child!public! !
unregister!parent/child!public! !
unregister:!parent/child!public! !
unregistered!parent/child!public! !
url!accessing!public! !
urlFor:!accessing!public! !
verifyPassword:forUser:!authentication!public! !
withDescendantsDo:!parent/child!public! !
!

!WARequestHandler class methodsFor!

concreteSubclasses	^ self allSubclasses reject: [ :each | each isAbstract ]!

description	^ self name greaseString!

isAbstract	^ self name = #WARequestHandler! !

!WARequestHandler class categoriesForMethods!
concreteSubclasses!accessing!public! !
description!accessing!public! !
isAbstract!public!testing! !
!

