"Filed out from Dolphin Smalltalk"!

WARequestHandler subclass: #WASessionContinuation
	instanceVariableNames: 'states'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASessionContinuation guid: (GUID fromString: '{66aa2791-f976-4ed3-9a76-e9c46563bf30}')!

WASessionContinuation comment: 'I represent a continuation as part of the flow of pages within a session. I am not a real continuation (as compared to those used in #call: and #answer:), I only represent a specific point in the session. I reference the root component and a memory snapshot of backtracked objects.'!

!WASessionContinuation categoriesForClass!Seaside-Session-Continuations! !

!WASessionContinuation methodsFor!

captureState	"self states reset"	"Setting states to nil matches the behaviour of Seaside 2.8. Resetting the Snapshot	is useful for JS callbacks in that refreshing the page will show the modified state	but can also result in many ActionPhaseContinuations all sharing the same state	but with different callbacks, some of which may reference state that is no longer present."	states := nil.	self updateStates: self states!

handle: aRequestContext	"Resume processing of a request. To ensure valid application state restore all registered states."	self restoreState.	self withUnregisteredHandlerDo: [ super handle: aRequestContext ]!

initializeWithSnapshot: aSnapshot	self initialize.	states := aSnapshot!

redirectToContinuation: aSessionContinuation	self respond: [ :response | response redirectTo: aSessionContinuation registerForUrl ]!

registerForUrl	^ self registerForUrl: true!

registerForUrl: aBoolean	| url |	url := self session actionUrlForContinuation: self.	aBoolean ifTrue: [ self updateUrl: url ].	^ url!

request	"Answer the current request object."	^ self requestContext request!

respond: aBlock 	self requestContext respond: aBlock!

restoreState	self states restore!

states	^ states ifNil: [ states := WASnapshot new ]!

updateStates: aSnapshot	self session updateStates: aSnapshot!

updateUrl: aUrl	self session updateUrl: aUrl!

withUnregisteredHandlerDo: aBlock 	^ aBlock 		on: WAUnregisteredHandlerError		do: [ :err | self requestContext redirectTo: self application url ]! !

!WASessionContinuation categoriesForMethods!
captureState!processing!public! !
handle:!handling!public! !
initializeWithSnapshot:!initialization!public! !
redirectToContinuation:!private! !
registerForUrl!private! !
registerForUrl:!private! !
request!accessing!public! !
respond:!processing!public! !
restoreState!processing!public! !
states!accessing!public! !
updateStates:!public!updating! !
updateUrl:!public!updating! !
withUnregisteredHandlerDo:!private! !
!

!WASessionContinuation class methodsFor!

defaultSnapshot	^ WASnapshot new!

isAbstract	^ self name = #WASessionContinuation!

new	^ self snapshot: self defaultSnapshot!

snapshot: aSnapshot	^ self basicNew		initializeWithSnapshot: aSnapshot;		yourself! !

!WASessionContinuation class categoriesForMethods!
defaultSnapshot!private! !
isAbstract!public!testing! !
new!instance creation!public! !
snapshot:!instance creation!public! !
!

