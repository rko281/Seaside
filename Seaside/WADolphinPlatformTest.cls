"Filed out from Dolphin Smalltalk 7"!

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

testSeconds

	"Does not hold true for Dolphin:
	self assert: Time now seconds isInteger"! !
!WADolphinPlatformTest categoriesFor: #decodeUtf8Character:!private! !
!WADolphinPlatformTest categoriesFor: #testSeconds!public!tests! !

