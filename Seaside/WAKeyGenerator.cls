"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAKeyGenerator
	instanceVariableNames: 'generator space'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'current'!

WAKeyGenerator guid: (GUID fromString: '{33a731e7-431f-4333-bff6-d0a1fcadeede}')!

WAKeyGenerator comment: ''!

!WAKeyGenerator categoriesForClass!Seaside-Core-Utilities! !

!WAKeyGenerator methodsFor!

generator: aStream	"A stream of random numbers, basically a random generator."	generator := aStream!

initialize	super initialize.	self generator: GRPlatform current newRandom.	self space: 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_-'!

keyOfLength: anInteger	"Answer a random key as a string with the length anInteger. This does not use any of the fancy collection methods for speed reasons."	| key |	key := String new: anInteger.	1 to: anInteger do: [ :index | key at: index put: (space at: (generator nextInt: space size)) ].	^ key!

space: aCollectionOfCharacters	"Defines the key generator space."	space := aCollectionOfCharacters! !

!WAKeyGenerator categoriesForMethods!
generator:!accessing!public! !
initialize!initialization!public! !
keyOfLength:!public! !
space:!accessing!public! !
!

!WAKeyGenerator class methodsFor!

current	^ current!

current: aWAKeyGenerator	current := aWAKeyGenerator!

initialize	current := self new! !

!WAKeyGenerator class categoriesForMethods!
current!accessing!public! !
current:!accessing!public! !
initialize!initialization!public! !
!

