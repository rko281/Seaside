"Filed out from Dolphin Smalltalk"!

WAValueCallback subclass: #WAMapCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMapCallback guid: (GUID fromString: '{9ecb97fa-d589-4871-8623-121e490f42fa}')!

WAMapCallback comment: ''!

!WAMapCallback categoriesForClass!Callbacks! !

!WAMapCallback methodsFor!

valueForField: anObject 	| stream x y |	stream := (super valueForField: anObject) readStream.	(stream atEnd not and: [ stream next = $? ]) ifFalse: [ ^ nil ].	x := (stream upTo: $,) greaseInteger.	(x isNil or: [ stream atEnd ]) ifTrue: [ ^ nil ].	y := stream upToEnd greaseInteger.	y isNil ifTrue: [ ^ nil ].	^ x @ y! !

!WAMapCallback categoriesForMethods!
valueForField:!converting!public! !
!

