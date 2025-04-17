"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAServerManager
	instanceVariableNames: 'adaptors'
	classVariableNames: 'Default'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAServerManager guid: (GUID fromString: '{4b4eddf0-a103-4437-adbb-7453ffb8743a}')!

WAServerManager comment: 'A server manager cares on the available Seaside server adopters'!

!WAServerManager categoriesForClass!Server! !

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

!WAServerManager categoriesForMethods!
adaptors!accessing!public! !
canStart:!private! !
canStop:!private! !
initialize!initialization!public! !
register:!accessing!public! !
restart:!public!starting/stopping! !
restartAll!public!starting/stopping! !
start:!public!starting/stopping! !
startAll!public!starting/stopping! !
stop:!public!starting/stopping! !
stopAll!public!starting/stopping! !
unregister:!accessing!public! !
!

!WAServerManager class methodsFor!

beDefault	"Set an instance of receiver to be the default Server Manager."		self setDefault: self new!

default	self ensureDefaultValueHolder.	Default contents ifNil: [ Default contents: self new ].	^ Default contents!

ensureDefaultValueHolder	Default isNil ifTrue: [ 		Default := GRPlatform current newTransientValueHolder ]!

initialize	self ensureDefaultValueHolder.	GRPlatform current		addToStartUpList: self;		addToShutDownList: self!

setDefault: aWAServerManager	"Private - Sets aWAServerManager as the default instance of receiver."	self ensureDefaultValueHolder.	Default contents: aWAServerManager.!

shutDown	self default adaptors do: [ :each | each shutDown ]!

startUp	self default adaptors do: [ :each | each startUp ]!

unload	GRPlatform current		removeFromStartUpList: self;		removeFromShutDownList: self! !

!WAServerManager class categoriesForMethods!
beDefault!configuring!public! !
default!accessing!public! !
ensureDefaultValueHolder!class initialization!public! !
initialize!class initialization!public! !
setDefault:!configuring!public! !
shutDown!public!system startup! !
startUp!public!system startup! !
unload!class initialization!public! !
!

