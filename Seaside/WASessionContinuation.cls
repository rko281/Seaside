"Filed out from Dolphin Smalltalk 7"!

WARequestHandler subclass: #WASessionContinuation
	instanceVariableNames: 'states'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASessionContinuation guid: (GUID fromString: '{c938376f-2d3b-4ee3-bacd-1390ec076eb0}')!
WASessionContinuation comment: 'I represent a continuation as part of the flow of pages within a session. I am not a real continuation (as compared to those used in #call: and #answer:), I only represent a specific point in the session. I reference the root component and a memory snapshot of backtracked objects.'!
!WASessionContinuation categoriesForClass!Seaside-Session! !
!WASessionContinuation methodsFor!

captureState	"self states reset"	"Setting states to nil matches the behaviour of Seaside 2.8. Resetting the Snapshot	is useful for JS callbacks in that refreshing the page will show the modified state	but can also result in many ActionPhaseContinuations all sharing the same state	but with different callbacks, some of which may reference state that is no longer present."	states := nil.	self updateStates: self states!

handle: aRequestContext	"Resume processing of a request. To ensure valid application state restore all registered states."	self states restore.	self withUnregisteredHandlerDo: [ super handle: aRequestContext ]!

initializeWithSnapshot: aSnapshot	self initialize.	states := aSnapshot!

redirectToContinuation: aSessionContinuation	self respond: [ :response | response redirectTo: aSessionContinuation registerForUrl ]!

registerForUrl	^ self registerForUrl: true!

registerForUrl: aBoolean	| url |	url := self session actionUrlForContinuation: self.	aBoolean ifTrue: [ self updateUrl: url ].	^ url!

request	"Answer the current request object."	^ self requestContext request!

respond: aBlock 	self requestContext respond: aBlock!

states	^ states ifNil: [ states := WASnapshot new ]!

updateStates: aSnapshot	self session updateStates: aSnapshot!

updateUrl: aUrl	self session updateUrl: aUrl!

withUnregisteredHandlerDo: aBlock 	^ aBlock 		on: WAUnregisteredHandlerError		do: [ :err | self requestContext redirectTo: self application url ]! !
!WASessionContinuation categoriesFor: #captureState!processing!public! !
!WASessionContinuation categoriesFor: #handle:!handling!public! !
!WASessionContinuation categoriesFor: #initializeWithSnapshot:!initialization!public! !
!WASessionContinuation categoriesFor: #redirectToContinuation:!private! !
!WASessionContinuation categoriesFor: #registerForUrl!private! !
!WASessionContinuation categoriesFor: #registerForUrl:!private! !
!WASessionContinuation categoriesFor: #request!accessing!public! !
!WASessionContinuation categoriesFor: #respond:!processing!public! !
!WASessionContinuation categoriesFor: #states!accessing!public! !
!WASessionContinuation categoriesFor: #updateStates:!public!updating! !
!WASessionContinuation categoriesFor: #updateUrl:!public!updating! !
!WASessionContinuation categoriesFor: #withUnregisteredHandlerDo:!private! !

!WASessionContinuation class methodsFor!

defaultSnapshot	^ WASnapshot new!

isAbstract	^ self name = #WASessionContinuation!

new	^ self snapshot: self defaultSnapshot!

snapshot: aSnapshot	^ self basicNew		initializeWithSnapshot: aSnapshot;		yourself! !
!WASessionContinuation class categoriesFor: #defaultSnapshot!private! !
!WASessionContinuation class categoriesFor: #isAbstract!public!testing! !
!WASessionContinuation class categoriesFor: #new!instance creation!public! !
!WASessionContinuation class categoriesFor: #snapshot:!instance creation!public! !

