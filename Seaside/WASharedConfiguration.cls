"Filed out from Dolphin Smalltalk"!

WAUserConfiguration subclass: #WASharedConfiguration
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'instances'!

WASharedConfiguration guid: (GUID fromString: '{064b2eb3-a95d-40df-8f6c-d7f3ddf9b449}')!

WASharedConfiguration comment: ''!

!WASharedConfiguration categoriesForClass!Seaside-Core-Configuration! !

!WASharedConfiguration methodsFor!

initializeWithName: aString	self initialize.	name := aString!

isShared	^ true!

name	^ name!

unregister	self class unregister: self! !

!WASharedConfiguration categoriesForMethods!
initializeWithName:!initialization!public! !
isShared!public!testing! !
name!accessing!public! !
unregister!actions!public! !
!

!WASharedConfiguration class methodsFor!

configurations	^ instances copy!

initialize	instances isNil ifTrue: [		instances := Set new ]!

named: aString	"Answer a shared configuration with the given name aString or answer a newly created one."		^ instances		detect: [ :each | each name = aString ]		ifNone: [			instances add: (self basicNew				initializeWithName: aString;				yourself) ]!

new	self error: 'Create or retrieve shared configurations by sending the message #named:'!

unregister: aConfiguration	"Removes aConfiguration from the list of known configurations."		^ instances remove: aConfiguration ifAbsent: [ nil ]! !

!WASharedConfiguration class categoriesForMethods!
configurations!accessing!public! !
initialize!initialization!public! !
named:!instance creation!public! !
new!instance creation!public! !
unregister:!instance creation!public! !
!

