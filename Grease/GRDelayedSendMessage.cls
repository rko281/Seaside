"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #GRDelayedSendMessage
	instanceVariableNames: 'selector'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRDelayedSendMessage guid: (GUID fromString: '{aa1727fa-e6b9-4bb1-90b7-8b075450dde0}')!
GRDelayedSendMessage comment: 'GRDelayedSendMessage is an abstract base for objects that provide currying functionality for GRDelayedSend'!
!GRDelayedSendMessage categoriesForClass!Grease-Core-Utilities! !
!GRDelayedSendMessage methodsFor!

argumentCount	"Answer the number of arguments that must be provided when sending this message."		self subclassResponsibility!

basicPerformFor: receiver withArguments: anArray	^ anArray size = selector numArgs		ifTrue: [ receiver perform: selector withArguments: anArray ]		ifFalse: [ self invalidArgumentCount ]!

initializeWithSelector: aSymbol	self initialize.	selector := aSymbol!

invalidArgumentCount	GRInvalidArgumentCount signal!

mergeArguments: anArray	self subclassResponsibility!

printOn: aStream	aStream nextPutAll: 'selector: '; print: selector!

valueFor: receiver withArguments: anArray	"Send the message to receiver with the arguments in anArray. Answer the result.	Signal an error if the number of arguments does not match the selector."		^ self basicPerformFor: receiver withArguments: (self mergeArguments: anArray)!

valueFor: receiver withPossibleArguments: anArray	"Send the message to receiver with as many of the arguments in anArray as possible. Answer the result.	Error if not enough arguments are available for the selector."	| allArguments |	allArguments := self mergeArguments: anArray.		^ allArguments size < selector numArgs		ifTrue: [ self invalidArgumentCount ]		ifFalse: [ self basicPerformFor: receiver withArguments: (allArguments first: selector numArgs) ]! !
!GRDelayedSendMessage categoriesFor: #argumentCount!delegation!public! !
!GRDelayedSendMessage categoriesFor: #basicPerformFor:withArguments:!private! !
!GRDelayedSendMessage categoriesFor: #initializeWithSelector:!initialization!public! !
!GRDelayedSendMessage categoriesFor: #invalidArgumentCount!private! !
!GRDelayedSendMessage categoriesFor: #mergeArguments:!private! !
!GRDelayedSendMessage categoriesFor: #printOn:!printing!public! !
!GRDelayedSendMessage categoriesFor: #valueFor:withArguments:!delegation!public! !
!GRDelayedSendMessage categoriesFor: #valueFor:withPossibleArguments:!delegation!public! !

!GRDelayedSendMessage class methodsFor!

new	^ self selector: #yourself!

selector: aSymbol	^ self basicNew		initializeWithSelector: aSymbol;		yourself! !
!GRDelayedSendMessage class categoriesFor: #new!instance creation!public! !
!GRDelayedSendMessage class categoriesFor: #selector:!instance creation!public! !

