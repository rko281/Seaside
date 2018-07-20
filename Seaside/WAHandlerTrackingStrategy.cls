"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAHandlerTrackingStrategy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHandlerTrackingStrategy guid: (GUID fromString: '{1afaede9-c50a-41fd-b5c5-99d612b1a755}')!
WAHandlerTrackingStrategy comment: 'I am a strategy of how request handlers should be tracked by a WARegistry or subclass.One important thing to remember a WARegistry can contain all kinds of request handlers. The most common case is a WAApplication that contains both WADocumentHandlers and WASessions. Some tracking methods may not be appropriate for some kinds of handlers (eg. a WADocumentHandler should never be tracked using a cookie). Some requests may have multiple keys (eg. a query field for a WADocumentHandler and a cookie for a WASession). It''s the job of the strategy to take this into consideration.The ''public'' protocol contains the methods that a tracking strategy must implement. The ''private'' protocol contains some utility methods that may be helpful implementing these methods.'!
!WAHandlerTrackingStrategy categoriesForClass!Seaside-Core-RequestHandling! !
!WAHandlerTrackingStrategy methodsFor!

addKey: aString toContext: aRequestContext	"Add the key of the handler to the request context. This is mostly used for adding a cookie to the response."	self subclassResponsibility!

addKey: aString toUrl: aUrl	"Add the key of the handler to the URL."	self subclassResponsibility!

addPathParameterWithValue: aString to: aUrl	| path |	path := aUrl path.	path isEmpty ifTrue: [		"hack if path is empty, will result in		/;_s=1234?_k=5678"		aUrl addToPath: '' ].	aUrl addPathParameterAt: path size key: self keyField value: aString!

addQueryFieldWithValue: aString to: aUrl	aUrl addField: self keyField value: aString!

keyField	"Answer the name of the field used to track handlers."	^ '_s'!

keyFromContext: aRequestContext	"Answer the handler key extracted from aRequestContext.	The key is used to look up the handler in the registry.		Keys are used to track both sessions and request handlers so a key of a request handler should override the key of a session	(eg. if you have a session cookie and a query field you have to answer the query field of the request handler)."	self subclassResponsibility!

noHandlerFoundForKey: aString in: anApplication context: aRequestContext	"This message is sent when no handler with the given key was found. Either there wasn't on in the first place or it was expired.		The default behavior is just to let the application handle an expired handler.	In some cases additional actions need to be performed (eg. deleting a session cookie).	In some cases at he tracking stragety does not support generating a random handler key (eg. IP address or ssl session id based), in these cases a new session with the given key has to be created. As ususal care has to be taken that this is done only for expired sessions and not for expired document handlers."	anApplication handleExpired: aRequestContext!

pathParameterKeyFromContext: aRequestContext	| url |	url := aRequestContext request url.	1 to: url path size do: [ :index |		| key |		key := url pathParameterAt: index key: self keyField ifAbsent: [ nil ].		key isNil ifFalse: [			^ key ] ].	^ nil!

queryFieldKeyFromContext: aRequestContext	^ aRequestContext request at: self keyField ifAbsent: [ nil ]! !
!WAHandlerTrackingStrategy categoriesFor: #addKey:toContext:!public! !
!WAHandlerTrackingStrategy categoriesFor: #addKey:toUrl:!public! !
!WAHandlerTrackingStrategy categoriesFor: #addPathParameterWithValue:to:!private! !
!WAHandlerTrackingStrategy categoriesFor: #addQueryFieldWithValue:to:!private! !
!WAHandlerTrackingStrategy categoriesFor: #keyField!private! !
!WAHandlerTrackingStrategy categoriesFor: #keyFromContext:!public! !
!WAHandlerTrackingStrategy categoriesFor: #noHandlerFoundForKey:in:context:!public! !
!WAHandlerTrackingStrategy categoriesFor: #pathParameterKeyFromContext:!private! !
!WAHandlerTrackingStrategy categoriesFor: #queryFieldKeyFromContext:!private! !

!WAHandlerTrackingStrategy class methodsFor!

isAbstract	^ self name = #WAHandlerTrackingStrategy! !
!WAHandlerTrackingStrategy class categoriesFor: #isAbstract!public!testing! !

