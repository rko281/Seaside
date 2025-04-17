"Filed out from Dolphin Smalltalk"!

GRObject subclass: #WAAbstractContinuation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAbstractContinuation guid: (GUID fromString: '{186e8b6b-f570-446c-b7dc-763ecac6cd10}')!

WAAbstractContinuation comment: 'Abstract superclass for partial and regular continuations.'!

!WAAbstractContinuation categoriesForClass!Unclassified! !

!WAAbstractContinuation methodsFor!

numArgs	self subclassResponsibility!

value	self subclassResponsibility!

value: anObject	self subclassResponsibility!

valueWithArguments: anArray	self subclassResponsibility!

valueWithPossibleArguments: anArray	self subclassResponsibility! !

!WAAbstractContinuation categoriesForMethods!
numArgs!accessing!public! !
value!evaluating!public! !
value:!evaluating!public! !
valueWithArguments:!evaluating!public! !
valueWithPossibleArguments:!evaluating!public! !
!

!WAAbstractContinuation class methodsFor!

isAbstract 	^ self == WAAbstractContinuation! !

!WAAbstractContinuation class categoriesForMethods!
isAbstract!public!testing! !
!

