"Filed out from Dolphin Smalltalk 7"!

GRDelegatingStream subclass: #GRCountingStream
	instanceVariableNames: 'count'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRCountingStream guid: (GUID fromString: '{80c3455c-2b30-4d8a-99b0-adc6ab150f78}')!
GRCountingStream comment: 'A GRCountingStream counts how many elements have been added to it. This is necessary because the underlying stream may inflate the number of elements in the stream.Instance Variables:	count	<Integer>		count  - number of elements added to this stream'!
!GRCountingStream categoriesForClass!Grease-Core! !
!GRCountingStream methodsFor!

count	^ count!

greaseNext: anInteger putAll: aCollection startingAt: startIndex	super greaseNext: anInteger putAll: aCollection startingAt: startIndex.	count := count + anInteger!

initialize	super initialize.	count := 0!

next	self shouldNotImplement!

next: anInteger	self shouldNotImplement!

nextPut: aCharacter	stream nextPut: aCharacter.	count := count + 1	!

nextPutAll: aString	stream nextPutAll: aString.	count := count + aString size	!

reset	super reset.	count := 0! !
!GRCountingStream categoriesFor: #count!accessing!public! !
!GRCountingStream categoriesFor: #greaseNext:putAll:startingAt:!public!streaming! !
!GRCountingStream categoriesFor: #initialize!initialization!public! !
!GRCountingStream categoriesFor: #next!public!streaming! !
!GRCountingStream categoriesFor: #next:!public!streaming! !
!GRCountingStream categoriesFor: #nextPut:!public!streaming! !
!GRCountingStream categoriesFor: #nextPutAll:!public!streaming! !
!GRCountingStream categoriesFor: #reset!accessing!public! !

