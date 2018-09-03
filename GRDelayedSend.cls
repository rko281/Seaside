"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #GRDelayedSend
	instanceVariableNames: 'receiver message'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRDelayedSend guid: (GUID fromString: '{a1d3c5b1-d544-4305-a272-37096c5fc8e3}')!
GRDelayedSend comment: 'A GRDelayedSend is a future message send of a message to an object. Some of the arguments can be predefined. Instances are intended to be interchangeable with blocks.This class should conform the ANSI (block) valuable protocol. Unlike a block, a GRDelayedSend is not a closure so doesn''t hold onto the method context. GRDelayedSend provides similar, but portable, functionality to Pharo''s MessageSend.This is an abstract class. Use the methods in the ''instance-creation'' protocol on the class side to create intances.Instance Variables	receiver:		<Object>	selector:		<Symbol>receiver	- the object receiving the messageselector	- the message selector sent to the receiver'!
!GRDelayedSend categoriesForClass!Grease-Core-Utilities! !
!GRDelayedSend methodsFor!

argumentCount	"Answer the number of arguments that must be provided to the receiver when sending it."		^ message argumentCount!

fixCallbackTemps	"For polymorphism with BlockContext>>#fixCallbackTemps."!

initializeWithReceiver: anObject message: aDelayedSendMessage	self initialize.	receiver := anObject.	message := aDelayedSendMessage!

printOn: aStream	super printOn: aStream.	aStream nextPutAll: ' receiver: '; print: receiver.	aStream nextPut: $ .	message printOn: aStream!

value	^ self valueWithArguments: #()!

value: anObject	^ self valueWithArguments: (Array with: anObject)!

value: aFirstObject value: aSecondObject	^ self valueWithArguments: (Array with: aFirstObject with: aSecondObject)!

valueWithArguments: anArray	^ message valueFor: receiver withArguments: anArray!

valueWithPossibleArguments: anArray	^ message valueFor: receiver withPossibleArguments: anArray! !
!GRDelayedSend categoriesFor: #argumentCount!accessing!public! !
!GRDelayedSend categoriesFor: #fixCallbackTemps!accessing!public! !
!GRDelayedSend categoriesFor: #initializeWithReceiver:message:!initialization!public! !
!GRDelayedSend categoriesFor: #printOn:!printing!public! !
!GRDelayedSend categoriesFor: #value!evaluating!public! !
!GRDelayedSend categoriesFor: #value:!evaluating!public! !
!GRDelayedSend categoriesFor: #value:value:!evaluating!public! !
!GRDelayedSend categoriesFor: #valueWithArguments:!evaluating!public! !
!GRDelayedSend categoriesFor: #valueWithPossibleArguments:!evaluating!public! !

!GRDelayedSend class methodsFor!

empty	^ self receiver: nil selector: #yourself!

new	^ self empty!

receiver: anObject selector: aSymbol 	^ self basicNew 		initializeWithReceiver: anObject			message: (GRUnboundMessage selector: aSymbol);		yourself!

receiver: anObject selector: aSymbol argument: aParameter	^ self receiver: anObject selector: aSymbol arguments: (Array with: aParameter)!

receiver: anObject selector: aSymbol arguments: anArray 	^ self basicNew 		initializeWithReceiver: anObject			message: (GRBoundMessage selector: aSymbol arguments: anArray);		yourself! !
!GRDelayedSend class categoriesFor: #empty!instance creation!public! !
!GRDelayedSend class categoriesFor: #new!instance creation!public! !
!GRDelayedSend class categoriesFor: #receiver:selector:!instance creation!public! !
!GRDelayedSend class categoriesFor: #receiver:selector:argument:!instance creation!public! !
!GRDelayedSend class categoriesFor: #receiver:selector:arguments:!instance creation!public! !

