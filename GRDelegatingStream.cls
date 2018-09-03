"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #GRDelegatingStream
	instanceVariableNames: 'stream'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRDelegatingStream guid: (GUID fromString: '{1b0cb027-35b9-4d09-9a4d-bec485b180df}')!
GRDelegatingStream comment: 'A GRDelegatingStream is a wrapper around a write stream and defines common behavior.Instance Variables	stream:		<WriteStream>stream	- a WriteStream'!
!GRDelegatingStream categoriesForClass!Grease-Core-Text! !
!GRDelegatingStream methodsFor!

atEnd	^ stream atEnd!

contents	^ stream contents!

crlf	self nextPut: Character cr; nextPut: Character lf!

flush	stream flush!

initializeOn: aStream	self initialize.	stream := aStream!

isStream	^ true!

next	self subclassResponsibility!

next: anInteger	self subclassResponsibility!

nextPut: aCharacter	self subclassResponsibility!

nextPutAll: aString	self subclassResponsibility!

position	^ stream position!

print: anObject	anObject printOn: self!

reset	"Reset the stream"	stream reset!

size	^ stream size!

space	self nextPut: Character space!

tab	self nextPut: Character tab! !
!GRDelegatingStream categoriesFor: #atEnd!public!testing! !
!GRDelegatingStream categoriesFor: #contents!accessing!public! !
!GRDelegatingStream categoriesFor: #crlf!public!streaming! !
!GRDelegatingStream categoriesFor: #flush!accessing!public! !
!GRDelegatingStream categoriesFor: #initializeOn:!initialization!public! !
!GRDelegatingStream categoriesFor: #isStream!public!testing! !
!GRDelegatingStream categoriesFor: #next!public!streaming! !
!GRDelegatingStream categoriesFor: #next:!public!streaming! !
!GRDelegatingStream categoriesFor: #nextPut:!public!streaming! !
!GRDelegatingStream categoriesFor: #nextPutAll:!public!streaming! !
!GRDelegatingStream categoriesFor: #position!accessing!public! !
!GRDelegatingStream categoriesFor: #print:!public!streaming! !
!GRDelegatingStream categoriesFor: #reset!accessing!public! !
!GRDelegatingStream categoriesFor: #size!accessing!public! !
!GRDelegatingStream categoriesFor: #space!public!streaming! !
!GRDelegatingStream categoriesFor: #tab!public!streaming! !

!GRDelegatingStream class methodsFor!

on: aStream	^ self basicNew initializeOn: aStream! !
!GRDelegatingStream class categoriesFor: #on:!instance creation!public! !

