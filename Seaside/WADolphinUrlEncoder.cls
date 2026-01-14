"Filed out from Dolphin Smalltalk"!

WAUrlEncoder subclass: #WADolphinUrlEncoder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADolphinUrlEncoder guid: (GUID fromString: '{cefd73d9-e68d-4cd2-a9f1-39dc24083496}')!

WADolphinUrlEncoder comment: ''!

!WADolphinUrlEncoder categoriesForClass!Seaside-Core-Document! !

!WADolphinUrlEncoder methodsFor!

nextPut: aCharacter 
	| value index |
	value := aCharacter greaseInteger.
	index := value + 1.
	index > 127 ifTrue: [
		^ self nextPutEscaped: aCharacter ].
	(table at: index)
		ifNil: [stream nextPut: aCharacter ]
		ifNotNil: [ :encoded | stream nextPutAll: encoded ]!

nextPutEscaped: aCharacter

	| bytes |

	bytes := aCharacter asUtf8String asByteArray.

	bytes do: 
		[ :byte | 
		stream nextPut: $%. 
		byte < 16 ifTrue: [stream nextPut: $0].
		byte printOn: stream base: 16 showRadix: false]! !

!WADolphinUrlEncoder categoriesForMethods!
nextPut:!accessing!public! !
nextPutEscaped:!accessing!public! !
!

!WADolphinUrlEncoder class methodsFor!

initialize	self initializeTable! !

!WADolphinUrlEncoder class categoriesForMethods!
initialize!initialization!public! !
!

