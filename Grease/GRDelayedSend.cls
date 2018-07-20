﻿"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #GRDelayedSend
	instanceVariableNames: 'receiver message'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRDelayedSend guid: (GUID fromString: '{a1d3c5b1-d544-4305-a272-37096c5fc8e3}')!
GRDelayedSend comment: 'A GRDelayedSend is a future message send of a message to an object. Some of the arguments can be predefined. Instances are intended to be interchangeable with blocks.
!GRDelayedSend categoriesForClass!Grease-Core-Utilities! !
!GRDelayedSend methodsFor!

argumentCount

fixCallbackTemps

initializeWithReceiver: anObject message: aDelayedSendMessage

printOn: aStream

value

value: anObject

value: aFirstObject value: aSecondObject

valueWithArguments: anArray

valueWithPossibleArguments: anArray
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

empty

new

receiver: anObject selector: aSymbol 

receiver: anObject selector: aSymbol argument: aParameter

receiver: anObject selector: aSymbol arguments: anArray 
!GRDelayedSend class categoriesFor: #empty!instance creation!public! !
!GRDelayedSend class categoriesFor: #new!instance creation!public! !
!GRDelayedSend class categoriesFor: #receiver:selector:!instance creation!public! !
!GRDelayedSend class categoriesFor: #receiver:selector:argument:!instance creation!public! !
!GRDelayedSend class categoriesFor: #receiver:selector:arguments:!instance creation!public! !
