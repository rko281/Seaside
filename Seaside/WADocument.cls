"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WADocument
	instanceVariableNames: 'stream root'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADocument guid: (GUID fromString: '{4215336e-beb6-4d15-ae7c-507823afbe9b}')!

WADocument comment: 'A WADocument combines an output stream and an instance of root. The root is responsible to render header and footer if necessary.'!

!WADocument categoriesForClass!Document! !

!WADocument methodsFor!

close	"Close the receiving document."	root isNil ifFalse: [ root closeOn: self ]!

destroy	stream := root := nil!

initializeWithStream: aStream codec: aCodec	self initialize.	stream := aStream!

nextPut: aCharacter	stream nextPut: aCharacter!

nextPutAll: aString	stream nextPutAll: aString!

open: aRoot	"Open the receiving document with aRoot."	(root := aRoot) openOn: self!

scriptGenerator: aScriptGenerator	"ignore"!

stream	"Answer the underlying character stream of this document."	^ stream! !

!WADocument categoriesForMethods!
close!actions!public! !
destroy!initialization!public! !
initializeWithStream:codec:!initialization!public! !
nextPut:!public!writing! !
nextPutAll:!public!writing! !
open:!actions!public! !
scriptGenerator:!accessing!public! !
stream!accessing!public! !
!

!WADocument class methodsFor!

new	^ self on: GRPlatform current readWriteCharacterStream!

on: aStream 	^ self 		on: aStream		codec: GRNullCodec new!

on: aStream codec: aCodec	^ self basicNew initializeWithStream: aStream codec: aCodec; yourself! !

!WADocument class categoriesForMethods!
new!instance creation!public! !
on:!instance creation!public! !
on:codec:!instance creation!public! !
!

