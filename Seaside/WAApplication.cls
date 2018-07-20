"Filed out from Dolphin Smalltalk 7"!

WARegistry subclass: #WAApplication
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAApplication guid: (GUID fromString: '{b5fe46f3-8441-4d4b-bb1e-06e4634d9915}')!
WAApplication comment: 'WAApplication is the starting point for a Seaside application. When a WAComponent is registered as a top level component a WAApplication object is added to a WADispatcher. The dispatcher forwards all requests to the WAApplication, which in turn forwards them to the correct WASession object. WAApplication''s parent class WARegistry maintains a list of all active sessions to the application. "configuration" contains a chain of WAConfituration classes that define attributes of the application. The attribute "rootComponent", for example, defines the top level WAComponent class for the application. The configuration chain includes WAUserConfiguration, WAGlobalConfiguration, WARenderLoopConfiguration and WASessionConfiguration. Other configurations can be added to the chain when the top level application is registered with a dispatcher. (See below)"libraries" is a collection of WALibrary classes, which are used to serve css, javascript and images used by the application. These may be in methods or in files. Sometimes these libraries are replaced by static files served by Apache. See WAFileLibrary class comment for more information.Registering an Application.	An application can be registered with a dispatcher by using the Seaside configuration page or via code. Below MyComponent is a subclass of WAComponent. The following registers the component as an application, gives some values to attributes (or preferences) and adds a library and a configuration. MyComponent class>>initialize	"self initialize"	| application |	application := self registerAsApplication: ''sample''.	application preferenceAt: #sessionClass put: Glorp.WAGlorpSession.	application addLibrary: SampleLibrary.	application configuration addAncestor: GlorpConfiguration new.	application preferenceAt: #glorpDatabasePlatform put: Glorp.PostgreSQLPlatform.	application preferenceAt: #databaseServer put: ''127.0.0.1''.	application preferenceAt: #databaseConnectString put: ''glorptests''.MyComponent>>someInstanceMethod	"example of how to access attributes (preferences)"	self session application preferenceAt: #glorpDatabasePlatform'!
!WAApplication categoriesForClass!Seaside-Session! !
!WAApplication methodsFor!

addLibrary: aLibraryClass	self		preferenceAt: #libraries		put: ((self preferenceAt: #libraries) copyWith: (GRPlatform current bindingOf: aLibraryClass))!

contentType	^ self mimeType seasideMimeType		charset: self requestContext charSet;		yourself!

createCache	^ GRPlatform current createSessionCacheForApplication: self!

defaultConfiguration	^ super defaultConfiguration		removeParent: WARegistryConfiguration instance;		addParent: WAApplicationConfiguration instance;		yourself!

handleDefault: aRequestContext	self handle: aRequestContext registering: self newSession		!

handleDefault: aRequestContext withKey: aKey	"starts a new session with the given key	Pay attention if the client can choose the key then you are vulnerable to session fixation attacks"	self handle: aRequestContext registering: self newSession at: aKey		!

handleFiltered: aRequestContext 	"Seaside applications do not respond to prefetch requests and only understand GET and POST requests."		aRequestContext request isPrefetch 		ifTrue: [ self handlePrefetch: aRequestContext ]		ifFalse: [			(self isImplemented: aRequestContext request method)				ifTrue: [ super handleFiltered: aRequestContext ]				ifFalse: [					aRequestContext responseGenerator						notImplemented;						respond ] ]!

handlePrefetch: aRequestContext	"Mozilla prefetches some <link> elements:	https://developer.mozilla.org/en/Link_prefetching_FAQ	This usally isn't a problem as long as they are used for style sheets.	It is however a problem when they are used for navigational 'Index', 'Next', and 'Prev'	See the following bug:	http://code.google.com/p/pier/issues/detail?id=132		Disabling has the disadvantage that we also disable prefech of things that would support prefetching	(like style sheets). However we don't recommend to have Seaside serving these in production.		We are not actually sure whether 403 Forbidden is the correct way to indicate that we don't support prefetching.	Ohter options would include:		- 412 Precondition Failed, user agent has to try different headers (seems fitting, however seems to be also about entity header)		- 405 Method Not Allowed, but this is about HTTP methods and we must send Allow containg the valid methods			We don't go through the response generator because the user will never see the response	so it doesn't make sense to customize the contents."	aRequestContext respond: [ :response |		response forbidden ]!

initialContinuationClass	^ (self preferenceAt: #initialContinuationClass) value!

isApplication	^ true!

isImplemented: aString	"Answer whether the receiver implements the given HTTP method."	^ #('GET' 'POST') includes: aString!

keyFor: aRequestHandler ifAbsent: absentBlock    ^ aRequestHandler key!

libraries	^ (self preferenceAt: #libraries) collect: [ :each | each value ]!

mimeType	^ self preferenceAt: #mimeType!

newSession	"Create a new session which inherits our configuration."	^ self sessionClass new		configuration: (WAUserConfiguration new addParent: self configuration; yourself);		yourself!

register: aSession	| key |	key := super register: aSession.	aSession key: key.	^ key!

register: aSession at: aKey	super register: aSession at: aKey.	aSession key: aKey.	^ aKey!

removeLibrary: aLibraryClass	self		preferenceAt: #libraries		put: ((self preferenceAt: #libraries) reject: [ :each | each value = aLibraryClass ])!

resourceBaseUrl	^ self preferenceAt: #resourceBaseUrl!

rootClass: aComponentClass	self preferenceAt: #rootClass put: (GRPlatform current bindingOf: aComponentClass)!

sessionAllowTermination	^ self preferenceAt: #sessionAllowTermination!

sessionClass	^ (self preferenceAt: #sessionClass) value!

sessionClass: aClass	^ self preferenceAt: #sessionClass put: (GRPlatform current bindingOf: aClass)!

sessions	| collection |	collection := OrderedCollection new.	self sessionsDo: [ :session | collection add: session ].	^ collection!

sessionsDo: aBlock	self handlersDo: aBlock! !
!WAApplication categoriesFor: #addLibrary:!libraries!public! !
!WAApplication categoriesFor: #contentType!configuration!public! !
!WAApplication categoriesFor: #createCache!initialization!public! !
!WAApplication categoriesFor: #defaultConfiguration!configuration!public! !
!WAApplication categoriesFor: #handleDefault:!handling!public! !
!WAApplication categoriesFor: #handleDefault:withKey:!handling!public! !
!WAApplication categoriesFor: #handleFiltered:!handling!public! !
!WAApplication categoriesFor: #handlePrefetch:!private! !
!WAApplication categoriesFor: #initialContinuationClass!configuration!public! !
!WAApplication categoriesFor: #isApplication!public!testing! !
!WAApplication categoriesFor: #isImplemented:!private! !
!WAApplication categoriesFor: #keyFor:ifAbsent:!parent/child!public! !
!WAApplication categoriesFor: #libraries!configuration!public! !
!WAApplication categoriesFor: #mimeType!configuration!public! !
!WAApplication categoriesFor: #newSession!private! !
!WAApplication categoriesFor: #register:!parent/child!public! !
!WAApplication categoriesFor: #register:at:!parent/child!public! !
!WAApplication categoriesFor: #removeLibrary:!libraries!public! !
!WAApplication categoriesFor: #resourceBaseUrl!configuration!public! !
!WAApplication categoriesFor: #rootClass:!configuration!public! !
!WAApplication categoriesFor: #sessionAllowTermination!configuration!public! !
!WAApplication categoriesFor: #sessionClass!configuration!public! !
!WAApplication categoriesFor: #sessionClass:!configuration!public! !
!WAApplication categoriesFor: #sessions!accessing!public! !
!WAApplication categoriesFor: #sessionsDo:!enumerating!public! !

!WAApplication class methodsFor!

description	^ 'Application'! !
!WAApplication class categoriesFor: #description!accessing!public! !

