"Filed out from Dolphin Smalltalk 7"!

WAValueCallback subclass: #WAMapCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMapCallback guid: (GUID fromString: '{d1aa3c12-e02e-405a-bf3b-6340c8ea45a7}')!
WAMapCallback comment: ''!
!WAMapCallback categoriesForClass!Seaside-Core-Callbacks! !
!WAMapCallback methodsFor!

valueForField: anObject 	| stream x y |	stream := (super valueForField: anObject) readStream.	(stream atEnd not and: [ stream next = $? ]) ifFalse: [ ^ nil ].	x := (stream upTo: $,) greaseInteger.	(x isNil or: [ stream atEnd ]) ifTrue: [ ^ nil ].	y := stream upToEnd greaseInteger.	y isNil ifTrue: [ ^ nil ].	^ x @ y! !
!WAMapCallback categoriesFor: #valueForField:!converting!public! !

