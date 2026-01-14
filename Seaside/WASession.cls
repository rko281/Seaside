"Filed out from Dolphin Smalltalk"!

WARequestHandler subclass: #WASession
	instanceVariableNames: 'continuations properties documentHandlers key'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASession guid: (GUID fromString: '{5539883e-6d6c-4e7e-8711-66a9d89a9343}')!

WASession comment: 'I am a Seaside session. A new instance of me gets created when an user accesses an application for the first time and is persistent as long as the user is interacting with it.This class is intended to be subclassed by applications that need global state (e.g. a logged-in user). Custom state can be added by creating instance variables and storing it there. The session can be retrieved by #session if inside a component or task or by evaluating: `WACurrentRequestContext session`Session expiry is controlled by the `WAHashCache` instance holding on to the `WASession` instances in a `WAApplication` instance. If the session is expired, it is garbage collected by the system. To manually expire a session call #unregister.A good way to clear all sessions is the following code:WARegistry clearSessions.WAPlatform current garbageCollect'!

!WASession categoriesForClass!Seaside-Session-Base! !

!WASession methodsFor!

actionField	^ '_k'!

actionUrlForContinuation: aContinuation	^ self actionUrlForKey: (continuations store: (aContinuation setParent: self; yourself))!

actionUrlForKey: aString	^ self url		addField: self actionField value: aString;		yourself!

application	^ self parent!

basicUrl	| url |	url := self parent url.	self parent trackingStrategy addKey: key toUrl: url.	^ url!

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

properties	"Answer a dictionary of session-related properties."	^ properties ifNil: [ properties := GRSmallDictionary2 new ]!

register: aDocumentHandler	| handlerKey |	handlerKey := self documentHandlers store: (aDocumentHandler setParent: self; yourself).	^ self basicUrl		addField: self documentHandlerFieldName value: handlerKey;		yourself!

start	self application initialContinuationClass new handle: self requestContext!

unknownRequest	^ self start!

unregister	parent unregisterAt: key!

updateRoot: anHtmlRoot!

updateStates: aSnapshot	self filters do: [ :each | each updateStates: aSnapshot ].	aSnapshot register: filter!

updateUrl: aUrl! !

!WASession categoriesForMethods!
actionField!accessing!public! !
actionUrlForContinuation:!accessing!public! !
actionUrlForKey:!accessing!public! !
application!accessing!public! !
basicUrl!private! !
createContinuationCache!initialization!public! !
createDocumentHandlerCache!initialization!public! !
documentHandlerFieldName!private! !
documentHandlers!accessing!public! !
documentHandlers:!accessing!public! !
handleFiltered:!handling!public! !
initialize!initialization!public! !
initializeFilters!initialization!public! !
isSession!public!testing! !
jumpToAnchor:!public!scripts! !
key!accessing!public! !
key:!accessing!public! !
postCopy!copying!public! !
properties!accessing!public! !
register:!parent/child!public! !
start!handling!public! !
unknownRequest!handling!public! !
unregister!parent/child!public! !
updateRoot:!public!updating! !
updateStates:!public!updating! !
updateUrl:!public!updating! !
!

