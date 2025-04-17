"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAMutex
	instanceVariableNames: 'semaphore owner'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMutex guid: (GUID fromString: '{e325610b-92ee-4ad8-8598-3ad64dd8bfb5}')!

WAMutex comment: 'WAMutex provides mutual exclusion properties.Only one process at a time can execute code within its #critical: method. Other processes attempting to call #critical: will block until the first process leaves the critical section. The process that owns the mutex (the one currently in the critical section), however, may call #critical: repeatedly without fear of blocking.The process currently inside the critical section can be terminated by calling #terminateOwner. This will result in the process being unwound and the critical section being freed.'!

!WAMutex categoriesForClass!Utilities! !

!WAMutex methodsFor!

copy	^ self species new!

critical: aBlock	| process |	process := Processor activeProcess.	^ (self owner == process)		ifTrue: [ aBlock value ]		ifFalse: [			semaphore critical: [				self owner: process.				aBlock ensure: [ self owner: nil ] ] ]!

initialize	super initialize.	semaphore := GRPlatform current semaphoreClass forMutualExclusion.	owner := GRPlatform current newTransientValueHolder!

owner	^ owner contents!

owner: aProcess	owner contents: aProcess!

terminateOwner	| o |	o := self owner.	o isNil ifFalse: [ GRPlatform current terminateProcess: o ]! !

!WAMutex categoriesForMethods!
copy!copying!public! !
critical:!mutual exclusion!public! !
initialize!initialization!public! !
owner!accessing!public! !
owner:!accessing!public! !
terminateOwner!mutual exclusion!public! !
!

