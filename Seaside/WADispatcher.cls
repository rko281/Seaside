"Filed out from Dolphin Smalltalk"!

WARequestHandler subclass: #WADispatcher
	instanceVariableNames: 'defaultName handlers'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'default'!

WADispatcher guid: (GUID fromString: '{4bd5c926-b4c8-41d0-9c96-53ef20396de2}')!

WADispatcher comment: 'WADispatcher takes http requests and dispatches them to the correct handler (WAApplication, WAFileHandler, etc). WADispatcher class>>default is the top level dispatcher. When a Seaside application is registered as "foo" the application is added to the top level dispatcher. The application is added to the entryPoints of the dispatcher at the key "foo". If a Seaside application is registered as "bar/foo" then the application isadded to a  dispatcher''s entryPoints at the key "foo". That dispatcher is in the top level dispatcher''s  entryPoints at the key "bar".   When a http request is received it is sent to WADispatcher class>>default to find the correct handler for the request. If a handler exists for the request is sent to that handler. Otherwise the request is sent to the not found response generator.The VW port maintains multiple copies of the tree of dispatchers rooted at WADispatcher class>>default. One copy is for each different URL that can reach Seaside (http://..../seaside/go/counter - normal, http://..../counter - SeasideShortPath, http://..../seaside/stream/counter - streaming). Instance Variables:	defaultName	<String>	entryPoints	<(Dictionary of: WAEntryPoint)>	 the keys are strings, which are the names and URL path segments for the handler at that key'!

!WADispatcher categoriesForClass!RequestHandling! !

!WADispatcher methodsFor!

childrenDo: aBlock	handlers do: aBlock!

defaultHandler	self defaultName isNil ifTrue: [ ^ nil ].	^ self handlerAt: self defaultName ifAbsent: [ nil ]!

defaultName	^ defaultName!

defaultName: aString	defaultName := aString!

handleDefault: aRequestContext	self defaultName isNil		ifTrue: [ aRequestContext responseGenerator forbidden; respond ]		ifFalse: [ self handleFiltered: aRequestContext named: self defaultName ]!

handleFiltered: aRequestContext	| consumer |	consumer := aRequestContext consumer.	consumer atEnd		ifTrue: [ self handleDefault: aRequestContext ]		ifFalse: [ self handleFiltered: aRequestContext named: consumer next ]!

handleFiltered: aRequestContext named: aString	(self 		handlerAt: aString 		ifAbsent: [ aRequestContext responseGenerator notFound; respond ])			handle: aRequestContext!

handlerAt: aString	^ self			handlerAt: aString			ifAbsent: [ WAError signal: 'Handler not found.' ]!

handlerAt: aString ifAbsent: aBlock	aString isNil		ifTrue: [ ^ aBlock value ].	^ self handlers		at: aString		ifAbsent: aBlock!

handlerAtAll: aCollectionOfStrings	^ aCollectionOfStrings inject: self into: [ :handler :element |		handler handlerAt: element ]!

handlers	^ handlers!

initialize	super initialize.	handlers := WABidirectionalCache new!

isDispatcher	^ true!

nameOfHandler: aRequestHandler 	"Answer the name of the given request handler. Signal an error the given handler is not registered in the receiver."	^ handlers		keyAtValue: aRequestHandler		ifAbsent: [ WAUnregisteredHandlerError signal ]!

postCopy	super postCopy.	handlers := handlers valuesCollect: [ :each | each copy setParent: self; yourself ]!

register: aRequestHandler at: aString 	aString ifNil: [ WAError signal: 'Registration key cannot be nil.' ].	handlers 		at: aString		put: (aRequestHandler setParent: self; yourself).	^ aRequestHandler!

unregister: aRequestHandler	handlers 		removeKey: aRequestHandler name		ifAbsent: [ ^ nil ].	^ aRequestHandler unregistered!

urlFor: aRequestHandler	^ self url		addToPath: (self nameOfHandler: aRequestHandler);		yourself! !

!WADispatcher categoriesForMethods!
childrenDo:!parent/child!public! !
defaultHandler!accessing!public! !
defaultName!accessing!public! !
defaultName:!accessing!public! !
handleDefault:!handling!public! !
handleFiltered:!handling!public! !
handleFiltered:named:!handling!public! !
handlerAt:!accessing!public! !
handlerAt:ifAbsent:!accessing!public! !
handlerAtAll:!accessing!public! !
handlers!accessing!public! !
initialize!initialization!public! !
isDispatcher!public!testing! !
nameOfHandler:!accessing!public! !
postCopy!copying!public! !
register:at:!parent/child!public! !
unregister:!parent/child!public! !
urlFor:!accessing!public! !
!

!WADispatcher class methodsFor!

default	^ default ifNil: [ default := self new ]!

description	^ 'Dispatcher'!

resetDefault	default := nil! !

!WADispatcher class categoriesForMethods!
default!accessing!public! !
description!accessing!public! !
resetDefault!initialization!public! !
!

