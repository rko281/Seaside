"Filed out from Dolphin Smalltalk"!

WAPlatformTest subclass: #WADolphinPlatformTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADolphinPlatformTest guid: (GUID fromString: '{44830e92-b2a7-4f3d-af28-922a30c64ff9}')!

WADolphinPlatformTest comment: ''!

!WADolphinPlatformTest categoriesForClass!Seaside-Tests-Core! !

!WADolphinPlatformTest methodsFor!

decodeUtf8Character: aCollectionOfIntegers 	"Decodes a collection of bytes into a single character. We have this so we can avoid having non-ASCII characters in the source."	| codec toDecode decoded |	codec := GRCodec forEncoding: 'utf-8'.	toDecode := aCollectionOfIntegers asByteArray.	decoded := codec decode: toDecode.	self assert: decoded characterCount = 1. "Superclass implementation uses size to mean number of Characters. size in Dolphin returns code units so change accordingly"	^ decoded readStream next "Superclass implementation uses first; in Dolphin this returns the first code unit not Character. Use stream to get full Character"!

testGreaseAsByteArray
	self assert: 1024 greaseAsByteArray equals: #[4 0].

	"Hard-code Pharo value for the superclass implementation"
	self assert: 1152921504606846985 greaseAsByteArray equals: #[16 0 0 0 0 0 0 9].

	"Negative encodings differ from Pharo so we raise an error at the moment"
	self should: [self assert: -1152921504606846986 greaseAsByteArray] raise: Error.

	self assert: #[1 2 3] greaseAsByteArray equals: #[1 2 3].
	self assert: '123' greaseAsByteArray equals: #[49 50 51]!

testGreaseByteAt
	self assert: (1024 greaseByteAt: 1) equals: 0.
	self assert: (1024 greaseByteAt: 2) equals: 4.

	"Hard-code Pharo value for the superclass implementation"
	self assert: (1152921504606846985 greaseByteAt: 1) equals: 9.
	self assert: (1152921504606846985 greaseByteAt: 8) equals: 16.

	"Negative encodings differ from Pharo so we raise an error at the moment"
	self should: [(SmallInteger minVal - 10) greaseByteAt: 1] raise: Error!

testGreaseBytesCount	self assert: 1024 greaseBytesCount equals: 2.

	"Hard-code Pharo value for the superclass implementation"
	self assert: 1152921504606846985 greaseBytesCount equals: 8.

	"Negative encodings differ from Pharo so we raise an error at the moment"
	self should: [(SmallInteger minVal - 10) greaseBytesCount ] raise: Error!

testSeconds

	"Does not hold true for Dolphin:
	self assert: Time now seconds isInteger"!

testSizeOfFile

	"Use binary file to avoid BOM confusion"
	| theFileName |	self		writeToFile: 'test me' asByteArray		withFileNameDo:[ :fileName |			self assert: (GRPlatform current sizeOfFile: fileName) equals: 7.			theFileName := fileName ].	self deny: (GRPlatform current fileExists: theFileName)!

testThisContext	| methodContext block |	"This is just a basic test to see if thisContext works"	methodContext := self platform thisContext.	block := [ | blockContext |		blockContext := self platform thisContext.		self assert: blockContext sender = methodContext.		self assert: blockContext receiver = self].			block value.	self assert: self returnSender = methodContext.	self assert: methodContext receiver = self!

writeToFile: aStringOrByteArray withFileNameDo: aBlock
	| fileName directory |
	fileName :=  'GRPharoPlatformTest'.
	directory := File workingDirectory.
	[ GRPlatform current
		write: aStringOrByteArray
		toFile: fileName
		inFolder: directory.
	aBlock value: (File composePath: directory subPath: fileName)
		] ensure: [
			File delete: (File composePath: directory subPath: fileName) ]! !

!WADolphinPlatformTest categoriesForMethods!
decodeUtf8Character:!private! !
testGreaseAsByteArray!public!tests/encoding! !
testGreaseByteAt!public!tests/encoding! !
testGreaseBytesCount!public!tests/encoding! !
testSeconds!public!tests! !
testSizeOfFile!public!tests/files! !
testThisContext!public!tests! !
writeToFile:withFileNameDo:!public!tests! !
!

