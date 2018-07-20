"Filed out from Dolphin Smalltalk 7"!

WAUserConfiguration subclass: #WASharedConfiguration
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'instances'!
WASharedConfiguration guid: (GUID fromString: '{1b2bec06-d6a1-4645-8a53-06df5bcee0bf}')!
WASharedConfiguration comment: ''!
!WASharedConfiguration categoriesForClass!Seaside-Core-Configuration! !
!WASharedConfiguration methodsFor!

initializeWithName: aString	self initialize.	name := aString!

isShared	^ true!

name	^ name!

unregister	self class unregister: self! !
!WASharedConfiguration categoriesFor: #initializeWithName:!initialization!public! !
!WASharedConfiguration categoriesFor: #isShared!public!testing! !
!WASharedConfiguration categoriesFor: #name!accessing!public! !
!WASharedConfiguration categoriesFor: #unregister!actions!public! !

!WASharedConfiguration class methodsFor!

configurations	^ instances copy!

initialize	instances isNil ifTrue: [		instances := Set new ]!

named: aString	"Answer a shared configuration with the given name aString or answer a newly created one."		^ instances		detect: [ :each | each name = aString ]		ifNone: [			instances add: (self basicNew				initializeWithName: aString;				yourself) ]!

new	self error: 'Create or retrieve shared configurations by sending the message #named:'!

unregister: aConfiguration	"Removes aConfiguration from the list of known configurations."		^ instances remove: aConfiguration ifAbsent: [ nil ]! !
!WASharedConfiguration class categoriesFor: #configurations!accessing!public! !
!WASharedConfiguration class categoriesFor: #initialize!initialization!public! !
!WASharedConfiguration class categoriesFor: #named:!instance creation!public! !
!WASharedConfiguration class categoriesFor: #new!instance creation!public! !
!WASharedConfiguration class categoriesFor: #unregister:!instance creation!public! !

