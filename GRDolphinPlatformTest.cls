"Filed out from Dolphin Smalltalk 7"!

GRPlatformTest subclass: #GRDolphinPlatformTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRDolphinPlatformTest guid: (GUID fromString: '{99844eab-2843-4c32-af25-a40c516921b8}')!
GRDolphinPlatformTest comment: ''!
!GRDolphinPlatformTest categoriesForClass!Unclassified! !
!GRDolphinPlatformTest methodsFor!

decodeUtf8Character: aCollectionOfIntegers 	"Decodes a collection of bytes into a single character. We have this so we can avoid having non-ASCII characters in the source."	| codec toDecode decoded |	codec := GRCodec forEncoding: 'utf-8'.	toDecode := aCollectionOfIntegers asByteArray.	decoded := codec decode: toDecode.	self assert: decoded characterCount = 1. "Superclass implementation uses size to mean number of Characters. size in Dolphin returns code units so change accordingly"	^ decoded readStream next "Superclass implementation uses first; in Dolphin this returns the first code unit not Character. Use stream to get full Character"!

testCompileIntoClassified
	| source protocol selectors selector |
	source := 'aMethod
	^ ''a result'''.
	protocol := 'a-protocol'.
	selector := #aMethod.

	GRPlatform current compile: source into: self class classified: protocol.
	[	self assert: (self class selectors includes: selector).
		selectors := (MethodCategory name: protocol) contents collect: [:each | each selector].
		self assert: (selectors includes: selector).
	 	] ensure: [ GRPlatform current removeSelector: selector from: self class ]!

testFullName
	self assert: Object fullName = 'Object'!

testMessageSendValueWithPossibleArguments
	| send |
	send := MessageSend receiver: 1 selector: #+.
	self assert: (send valueWithPossibleArguments: (Array with: 2)) = 3.
	self should: [self assert: (send valueWithArguments: (Array with: 2)) = 3] raise: Error. "<- Dolphin doesn't like this..."
	self should: [self assert: (send value: 2) = 3] raise: Error. "<-...or this. We could reimplement to fix (implementations are inherited from MessageSendAbstract) but this is fairly basic functionality so we leave well alone"

	send := MessageSend receiver: false selector: #not.
	self assert: (send valueWithPossibleArguments: (Array with: 3)).
	
	send := MessageSend receiver: 1 selector: #+ arguments: #(2).
	self assert: (send valueWithPossibleArguments: (Array with: 4)) = 3.
	self assert: send value = 3.
	
	send := MessageSend receiver: Array selector: #with:with: arguments: #(1).
	self assert: (send valueWithPossibleArguments: (Array with: 2)) size = 2.

	send := MessageSend receiver: Array selector: #with:with:.
	self should: [self assert: (send value: 1 value: 2) size = 2] raise: Error "See above".
	
	send := MessageSend 
		receiver: 1
		selector: #+.
	self assert: send argumentCount = 1.
	self assert: send arguments size = 0.
	self assert: send fixCallbackTemps == send.
	
	send := MessageSend 
		receiver: 1
		selector: #+
		argument: 2.
	self assert: send argumentCount isZero.
	self assert: send arguments size = 1.
	self assert: send fixCallbackTemps == send! !
!GRDolphinPlatformTest categoriesFor: #decodeUtf8Character:!private! !
!GRDolphinPlatformTest categoriesFor: #testCompileIntoClassified!public!tests! !
!GRDolphinPlatformTest categoriesFor: #testFullName!public!tests! !
!GRDolphinPlatformTest categoriesFor: #testMessageSendValueWithPossibleArguments!public!tests! !

