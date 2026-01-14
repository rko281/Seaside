"Filed out from Dolphin Smalltalk"!

WAValueCallback subclass: #WAMapCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMapCallback guid: (GUID fromString: '{b1145a57-b7d4-4442-99f7-68376da12d2a}')!

WAMapCallback comment: ''!

!WAMapCallback categoriesForClass!Seaside-Core-Callbacks! !

!WAMapCallback methodsFor!

valueForField: anObject 	| stream x y |	stream := (super valueForField: anObject) readStream.	(stream atEnd not and: [ stream next = $? ]) ifFalse: [ ^ nil ].	x := (stream upTo: $,) greaseInteger.	(x isNil or: [ stream atEnd ]) ifTrue: [ ^ nil ].	y := stream upToEnd greaseInteger.	y isNil ifTrue: [ ^ nil ].	^ x @ y! !

!WAMapCallback categoriesForMethods!
valueForField:!converting!public! !
!

