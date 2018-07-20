"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAServerManager
	instanceVariableNames: 'adaptors'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'default'!
WAServerManager guid: (GUID fromString: '{47a6f7be-673e-438b-91c5-53c3f1b33e84}')!
WAServerManager comment: ''!
!WAServerManager categoriesForClass!Seaside-Core-Server! !
!WAServerManager methodsFor!

adaptors	^ adaptors copy!

canStart: aServerAdaptor	"Because we can't rely on the socket refusing to listen on a port already in use, we simply check here if we know of another adaptor using this adaptor's port"	^ aServerAdaptor isStopped 			and: [ self adaptors noneSatisfy: [ :adaptor | 				adaptor ~= aServerAdaptor					and: [ adaptor port = aServerAdaptor port					and: [ adaptor isStopped not ] ] ] ]!

canStop: aServerAdaptor	^ aServerAdaptor isStopped not!

initialize	super initialize.	adaptors := OrderedCollection new!

register: aServerAdaptor	^ adaptors add: aServerAdaptor!

restart: aServerAdaptor	self stop: aServerAdaptor.	self start: aServerAdaptor!

restartAll	adaptors do: [ :each | each restart ]!

start: aServerAdaptor	(self canStart: aServerAdaptor) ifTrue: [		[ aServerAdaptor basicStart ]			ifCurtailed: [ self stop: aServerAdaptor ] ]!

startAll	adaptors do: [ :each | each start ]!

stop: aServerAdaptor	(self canStop: aServerAdaptor) ifTrue: [ aServerAdaptor basicStop ]!

stopAll	adaptors do: [ :each | each stop ]!

unregister: aServerAdaptor	self stop: aServerAdaptor.	adaptors remove: aServerAdaptor.	aServerAdaptor unregistered.	^ aServerAdaptor! !
!WAServerManager categoriesFor: #adaptors!accessing!public! !
!WAServerManager categoriesFor: #canStart:!private! !
!WAServerManager categoriesFor: #canStop:!private! !
!WAServerManager categoriesFor: #initialize!initialization!public! !
!WAServerManager categoriesFor: #register:!accessing!public! !
!WAServerManager categoriesFor: #restart:!public!starting/stopping! !
!WAServerManager categoriesFor: #restartAll!public!starting/stopping! !
!WAServerManager categoriesFor: #start:!public!starting/stopping! !
!WAServerManager categoriesFor: #startAll!public!starting/stopping! !
!WAServerManager categoriesFor: #stop:!public!starting/stopping! !
!WAServerManager categoriesFor: #stopAll!public!starting/stopping! !
!WAServerManager categoriesFor: #unregister:!accessing!public! !

!WAServerManager class methodsFor!

default	default contents ifNil: [ default contents: self new ].	^ default contents!

initialize	self initializeDefaultValueHolder.	GRPlatform current		addToStartUpList: self;		addToShutDownList: self!

initializeDefaultValueHolder	default isNil ifTrue: [ 		default := GRPlatform current newTransientValueHolder ]!

shutDown	self default adaptors do: [ :each | each shutDown ]!

startUp	self default adaptors do: [ :each | each startUp ]!

unload	GRPlatform current		removeFromStartUpList: self;		removeFromShutDownList: self! !
!WAServerManager class categoriesFor: #default!accessing!public! !
!WAServerManager class categoriesFor: #initialize!class initialization!public! !
!WAServerManager class categoriesFor: #initializeDefaultValueHolder!class initialization!public! !
!WAServerManager class categoriesFor: #shutDown!public!system startup! !
!WAServerManager class categoriesFor: #startUp!public!system startup! !
!WAServerManager class categoriesFor: #unload!class initialization!public! !

