"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WADocument
	instanceVariableNames: 'stream root'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADocument guid: (GUID fromString: '{7df58d8c-2524-4605-ad95-b069785d534e}')!
WADocument comment: 'A WADocument combines an output stream and an instance of root. The root is responsible to render header and footer if necessary.'!
!WADocument categoriesForClass!Seaside-Core-Document! !
!WADocument methodsFor!

close	"Close the receiving document."	root isNil ifFalse: [ root closeOn: self ]!

destroy	stream := root := nil!

initializeWithStream: aStream codec: aCodec	self initialize.	stream := aStream!

nextPut: aCharacter	stream nextPut: aCharacter!

nextPutAll: aString	stream nextPutAll: aString!

open: aRoot	"Open the receiving document with aRoot."	(root := aRoot) openOn: self!

scriptGenerator: aScriptGenerator	"ignore"!

stream	"Answer the underlying character stream of this document."	^ stream! !
!WADocument categoriesFor: #close!actions!public! !
!WADocument categoriesFor: #destroy!initialization!public! !
!WADocument categoriesFor: #initializeWithStream:codec:!initialization!public! !
!WADocument categoriesFor: #nextPut:!public!writing! !
!WADocument categoriesFor: #nextPutAll:!public!writing! !
!WADocument categoriesFor: #open:!actions!public! !
!WADocument categoriesFor: #scriptGenerator:!accessing!public! !
!WADocument categoriesFor: #stream!accessing!public! !

!WADocument class methodsFor!

new	^ self on: GRPlatform current readWriteCharacterStream!

on: aStream 	^ self 		on: aStream		codec: GRNullCodec new!

on: aStream codec: aCodec	^ self basicNew initializeWithStream: aStream codec: aCodec; yourself! !
!WADocument class categoriesFor: #new!instance creation!public! !
!WADocument class categoriesFor: #on:!instance creation!public! !
!WADocument class categoriesFor: #on:codec:!instance creation!public! !

