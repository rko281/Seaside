"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAKeyGenerator
	instanceVariableNames: 'generator space'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'current'!
WAKeyGenerator guid: (GUID fromString: '{d99ffe34-7316-469f-a000-3af54674a0ca}')!
WAKeyGenerator comment: ''!
!WAKeyGenerator categoriesForClass!Seaside-Core-Utilities! !
!WAKeyGenerator methodsFor!

generator: aStream	"A stream of random numbers, basically a random generator."	generator := aStream!

initialize	super initialize.	self generator: GRPlatform current newRandom.	self space: 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_-'!

keyOfLength: anInteger	"Answer a random key as a string with the length anInteger. This does not use any of the fancy collection methods for speed reasons."	| key |	key := String new: anInteger.	1 to: anInteger do: [ :index | key at: index put: (space at: (generator nextInt: space size)) ].	^ key!

space: aCollectionOfCharacters	"Defines the key generator space."	space := aCollectionOfCharacters! !
!WAKeyGenerator categoriesFor: #generator:!accessing!public! !
!WAKeyGenerator categoriesFor: #initialize!initialization!public! !
!WAKeyGenerator categoriesFor: #keyOfLength:!public! !
!WAKeyGenerator categoriesFor: #space:!accessing!public! !

!WAKeyGenerator class methodsFor!

current	^ current!

current: aWAKeyGenerator	current := aWAKeyGenerator!

initialize	current := self new! !
!WAKeyGenerator class categoriesFor: #current!accessing!public! !
!WAKeyGenerator class categoriesFor: #current:!accessing!public! !
!WAKeyGenerator class categoriesFor: #initialize!initialization!public! !

