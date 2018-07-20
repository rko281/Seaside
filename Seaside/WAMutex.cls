"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAMutex
	instanceVariableNames: 'semaphore owner'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMutex guid: (GUID fromString: '{0d4fbe57-62e1-41fb-ac58-be2d4b227816}')!
WAMutex comment: 'WAMutex provides mutual exclusion properties.Only one process at a time can execute code within its #critical: method. Other processes attempting to call #critical: will block until the first process leaves the critical section. The process that owns the mutex (the one currently in the critical section), however, may call #critical: repeatedly without fear of blocking.The process currently inside the critical section can be terminated by calling #terminateOwner. This will result in the process being unwound and the critical section being freed.'!
!WAMutex categoriesForClass!Seaside-Core-Utilities! !
!WAMutex methodsFor!

copy	^ self species new!

critical: aBlock	| process |	process := Processor activeProcess.	^ (self owner == process)		ifTrue: [ aBlock value ]		ifFalse: [			semaphore critical: [				self owner: process.				aBlock ensure: [ self owner: nil ] ] ]!

initialize	super initialize.	semaphore := GRPlatform current semaphoreClass forMutualExclusion.	owner := GRPlatform current newTransientValueHolder!

owner	^ owner contents!

owner: aProcess	owner contents: aProcess!

terminateOwner	| o |	o := self owner.	o isNil ifFalse: [ GRPlatform current terminateProcess: o ]! !
!WAMutex categoriesFor: #copy!copying!public! !
!WAMutex categoriesFor: #critical:!mutual exclusion!public! !
!WAMutex categoriesFor: #initialize!initialization!public! !
!WAMutex categoriesFor: #owner!accessing!public! !
!WAMutex categoriesFor: #owner:!accessing!public! !
!WAMutex categoriesFor: #terminateOwner!mutual exclusion!public! !

