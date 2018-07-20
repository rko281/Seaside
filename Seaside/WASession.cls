"Filed out from Dolphin Smalltalk 7"!

WARequestHandler subclass: #WASession
	instanceVariableNames: 'continuations properties documentHandlers key'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASession guid: (GUID fromString: '{3afa6fbb-3bdc-49d4-93d2-f5b9290bb062}')!
WASession comment: 'I am a Seaside session. A new instance of me gets created when an user accesses an application for the first time and is persistent as long as the user is interacting with it.This class is intended to be subclasses by applications that need global state, like a user. Custom state can be added by creating instance variables and storing it there. The session can be retrieved by #session if inside a component or task or by evaluating: WACurrentRequestContext sessionIf the session has not been used for #defaultTimeoutSeconds, it is garbage collected by the system. To manually expire a session call #expire.A good way to clear all sessions is the following code:WARegistry clearAllHandlers.WAPlatform current garbageCollect'!
!WASession categoriesForClass!Seaside-Session! !
!WASession methodsFor!

actionField	^ '_k'!

actionUrlForContinuation: aContinuation	^ self actionUrlForKey: (continuations store: (aContinuation setParent: self; yourself))!

actionUrlForKey: aString	^ self url		addField: self actionField value: aString;		yourself!

application	^ self parent!

basicUrl	| url |	url := self parent url.	self parent trackingStrategy addKey: key toUrl: url.	^ url!

cache	self greaseDeprecatedApi: 'WASession>>#cache' details: 'Use #documentHandlers instead.'.	^ self documentHandlers!

cache: aCache	self greaseDeprecatedApi: 'WASession>>#cache:' details: 'Use #documentHandlers: instead.'.	self documentHandlers: aCache!

createContinuationCache	"To configure the continuation cache you must currently subclass WASession and	override this method.	There is no need to use WABulkReapingCache for GemStone/S here because we're inside the session mutex."	^ WAHashCache		initialSize: 7		maximumSize: 20		maximumAbsoluteAge: 0		maximumRelativeAge: 0		overflowAction: WAHashCache removeRelativeOldest!

createDocumentHandlerCache	"No mutex necessary since we are inside the session mutex.	We don't expire document handlers"	^ WAUnidirectionalCache new!

documentHandlerFieldName	^ '_d'!

documentHandlers	documentHandlers isNil ifTrue: [		documentHandlers := self createDocumentHandlerCache ].	^ documentHandlers!

documentHandlers: aCache	documentHandlers := aCache!

handleFiltered: aRequestContext	| continationKey continuation fields documentHandlerKey |	fields := aRequestContext request fields.	documentHandlerKey := fields at: self documentHandlerFieldName ifAbsent: [ nil ].	documentHandlerKey isNil ifFalse: [		| documentHandler |		documentHandler := self documentHandlers at: documentHandlerKey ifAbsent: [ 			^ aRequestContext responseGenerator				notFound;				respond ].		^ documentHandler handle: aRequestContext ].		continationKey := fields		at: self actionField		ifAbsent: [ ^ self start ].			continuation := continuations		at: continationKey		ifAbsent: [ ^ self unknownRequest ].	continuation handle: aRequestContext!

initialize	super initialize.	self initializeFilters.	continuations := self createContinuationCache!

initializeFilters	self addFilter: (GRPlatform current createMutualExclusionFilter)!

isSession	^ true!

jumpToAnchor: aString	| actionContinuation |	actionContinuation := self requestContext handlers		detect: [ :each | each isActionContinuation ]		ifNone: [ WAIllegalStateException signal: 'You can only send #jumpToAnchor: from within a callback' ].	actionContinuation jumpToAnchor: aString!

key	^ key!

key: aString	key := aString!

postCopy	super postCopy.	continuations := continuations copy!

properties	"Answer a dictionary of session-related properties."	^ properties ifNil: [ properties := GRSmallDictionary new ]!

register: aDocumentHandler	| handlerKey |	handlerKey := self documentHandlers store: (aDocumentHandler setParent: self; yourself).	^ self basicUrl		addField: self documentHandlerFieldName value: handlerKey;		yourself!

start	self application initialContinuationClass new handle: self requestContext!

unknownRequest	^ self start!

unregister	parent unregisterAt: key!

updateRoot: anHtmlRoot!

updateStates: aSnapshot	self filters do: [ :each | each updateStates: aSnapshot ].	aSnapshot register: filter!

updateUrl: aUrl! !
!WASession categoriesFor: #actionField!accessing!public! !
!WASession categoriesFor: #actionUrlForContinuation:!accessing!public! !
!WASession categoriesFor: #actionUrlForKey:!accessing!public! !
!WASession categoriesFor: #application!accessing!public! !
!WASession categoriesFor: #basicUrl!private! !
!WASession categoriesFor: #cache!accessing!public! !
!WASession categoriesFor: #cache:!accessing!public! !
!WASession categoriesFor: #createContinuationCache!initialization!public! !
!WASession categoriesFor: #createDocumentHandlerCache!initialization!public! !
!WASession categoriesFor: #documentHandlerFieldName!private! !
!WASession categoriesFor: #documentHandlers!accessing!public! !
!WASession categoriesFor: #documentHandlers:!accessing!public! !
!WASession categoriesFor: #handleFiltered:!handling!public! !
!WASession categoriesFor: #initialize!initialization!public! !
!WASession categoriesFor: #initializeFilters!initialization!public! !
!WASession categoriesFor: #isSession!public!testing! !
!WASession categoriesFor: #jumpToAnchor:!public!scripts! !
!WASession categoriesFor: #key!accessing!public! !
!WASession categoriesFor: #key:!accessing!public! !
!WASession categoriesFor: #postCopy!copying!public! !
!WASession categoriesFor: #properties!accessing!public! !
!WASession categoriesFor: #register:!parent/child!public! !
!WASession categoriesFor: #start!handling!public! !
!WASession categoriesFor: #unknownRequest!handling!public! !
!WASession categoriesFor: #unregister!parent/child!public! !
!WASession categoriesFor: #updateRoot:!public!updating! !
!WASession categoriesFor: #updateStates:!public!updating! !
!WASession categoriesFor: #updateUrl:!public!updating! !

