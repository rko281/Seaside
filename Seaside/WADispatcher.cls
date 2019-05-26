"Filed out from Dolphin Smalltalk 7"!

WARequestHandler subclass: #WADispatcher
	instanceVariableNames: 'defaultName handlers'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'default'!
WADispatcher guid: (GUID fromString: '{0f778c1e-2355-4847-afec-4e943d37f134}')!
WADispatcher comment: 'WADispatcher takes http requests and dispatches them to the correct handler (WAApplication, WAFileHandler, etc). WADispatcher class>>default is the top level dispatcher. When a Seaside application is registered as "foo" the application is added to the top level dispatcher. The application is added to the entryPoints of the dispatcher at the key "foo". If a Seaside application is registered as "bar/foo" then the application isadded to a  dispatcher''s entryPoints at the key "foo". That dispatcher is in the top level dispatcher''s  entryPoints at the key "bar".   When a http request is received it is sent to WADispatcher class>>default to find the correct handler for the request. If a handler exists for the request is sent to that handler. Otherwise the request is sent to the not found response generator.The VW port maintains multiple copies of the tree of dispatchers rooted at WADispatcher class>>default. One copy is for each different URL that can reach Seaside (http://..../seaside/go/counter - normal, http://..../counter - SeasideShortPath, http://..../seaside/stream/counter - streaming). Instance Variables:	defaultName	<String>	entryPoints	<(Dictionary of: WAEntryPoint)>	 the keys are strings, which are the names and URL path segments for the handler at that key'!
!WADispatcher categoriesForClass!Seaside-Core-RequestHandling! !
!WADispatcher methodsFor!

childrenDo: aBlock	handlers do: aBlock!

defaultHandler	self defaultName isNil ifTrue: [ ^ nil ].	^ self handlerAt: self defaultName ifAbsent: [ nil ]!

defaultName	^ defaultName!

defaultName: aString	defaultName := aString!

handleDefault: aRequestContext	self defaultName isNil		ifTrue: [ aRequestContext responseGenerator forbidden; respond ]		ifFalse: [ self handleFiltered: aRequestContext named: self defaultName ]!

handleFiltered: aRequestContext	| consumer |	consumer := aRequestContext consumer.	consumer atEnd		ifTrue: [ self handleDefault: aRequestContext ]		ifFalse: [ self handleFiltered: aRequestContext named: consumer next ]!

handleFiltered: aRequestContext named: aString	(self 		handlerAt: aString 		ifAbsent: [ aRequestContext responseGenerator notFound; respond ])			handle: aRequestContext!

handlerAt: aString	^ self			handlerAt: aString			with: [ :dispatcher :token |				dispatcher handlers at: token ] !

handlerAt: aString ifAbsent: aBlock	^ self		handlerAt: (aString			ifNil: [ ^ aBlock value ])		with: [ :dispatcher :token |			dispatcher handlers				at: token				ifAbsent: [ ^ aBlock value ] ]!

handlerAt: aString with: aBlock	| dispatcher |	dispatcher := self.	GRPlatform subStringsIn: aString splitBy: $/ do: [ :token |		dispatcher := aBlock value: dispatcher value: token ].	^ dispatcher!

handlers	^ handlers!

initialize	super initialize.	handlers := WABidirectionalCache new!

isDispatcher	^ true!

nameOfHandler: aRequestHandler 	"Answer the name of the given request handler. Signal an error the given handler is not registered in the receiver."	^ handlers		keyAtValue: aRequestHandler		ifAbsent: [ WAUnregisteredHandlerError signal ]!

postCopy	super postCopy.	handlers := handlers valuesCollect: [ :each | each copy setParent: self; yourself ]!

register: aRequestHandler at: aString 	aString ifNil: [ WAError signal: 'Registration key cannot be nil.' ].	handlers 		at: aString		put: (aRequestHandler setParent: self; yourself).	^ aRequestHandler!

unregister: aRequestHandler	handlers 		removeKey: aRequestHandler name		ifAbsent: [ ^ nil ].	^ aRequestHandler unregistered!

urlFor: aRequestHandler	^ self url		addToPath: (self nameOfHandler: aRequestHandler);		yourself! !
!WADispatcher categoriesFor: #childrenDo:!parent/child!public! !
!WADispatcher categoriesFor: #defaultHandler!accessing!public! !
!WADispatcher categoriesFor: #defaultName!accessing!public! !
!WADispatcher categoriesFor: #defaultName:!accessing!public! !
!WADispatcher categoriesFor: #handleDefault:!handling!public! !
!WADispatcher categoriesFor: #handleFiltered:!handling!public! !
!WADispatcher categoriesFor: #handleFiltered:named:!handling!public! !
!WADispatcher categoriesFor: #handlerAt:!accessing!public! !
!WADispatcher categoriesFor: #handlerAt:ifAbsent:!accessing!public! !
!WADispatcher categoriesFor: #handlerAt:with:!accessing!public! !
!WADispatcher categoriesFor: #handlers!accessing!public! !
!WADispatcher categoriesFor: #initialize!initialization!public! !
!WADispatcher categoriesFor: #isDispatcher!public!testing! !
!WADispatcher categoriesFor: #nameOfHandler:!accessing!public! !
!WADispatcher categoriesFor: #postCopy!copying!public! !
!WADispatcher categoriesFor: #register:at:!parent/child!public! !
!WADispatcher categoriesFor: #unregister:!parent/child!public! !
!WADispatcher categoriesFor: #urlFor:!accessing!public! !

!WADispatcher class methodsFor!

default	^ default ifNil: [ default := self new ]!

description	^ 'Dispatcher'!

resetDefault	default := nil! !
!WADispatcher class categoriesFor: #default!accessing!public! !
!WADispatcher class categoriesFor: #description!accessing!public! !
!WADispatcher class categoriesFor: #resetDefault!initialization!public! !

