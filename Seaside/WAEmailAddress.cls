"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAEmailAddress
	instanceVariableNames: 'username address'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAEmailAddress guid: (GUID fromString: '{3aa26b47-10b2-4028-9228-83a96d46098a}')!

WAEmailAddress comment: ''!

!WAEmailAddress categoriesForClass!HTTP! !

!WAEmailAddress methodsFor!

address	^ address!

address: aString	address := self sanitize: aString!

encodeOn: aDocument	self encodeOn: aDocument xmlEncoder usingQuotes: false!

encodeOn: aStream usingQuotes: aBoolean	username isNil ifFalse:  [		aBoolean ifTrue: [ aStream nextPut: $" ].		aStream nextPutAll: username.		aBoolean ifTrue: [ aStream nextPut: $" ].		aStream nextPutAll: ' <' ].	aStream nextPutAll: address.	username isNil ifFalse: [ aStream nextPut: $> ]!

greaseString	^ String streamContents: [ :stream | 		self 			encodeOn: stream			usingQuotes: true ]!

printOn: aStream 	super printOn: aStream.	aStream nextPut: $(.	aStream nextPutAll: self greaseString.	aStream nextPut: $)!

sanitize: aString	"prevents SMTP header injection"	| newlineIndex |	newlineIndex := (aString indexOf: Character cr) min: (aString indexOf: Character lf).	^ newlineIndex = 0		ifTrue: [ aString ]		ifFalse: [ aString copyFrom: 1 to: newlineIndex - 1  ]!

username	^ username!

username: aString	username := self sanitize: aString! !

!WAEmailAddress categoriesForMethods!
address!accessing!public! !
address:!accessing!public! !
encodeOn:!displaying!public! !
encodeOn:usingQuotes:!private! !
greaseString!displaying!public! !
printOn:!printing!public! !
sanitize:!private! !
username!accessing!public! !
username:!accessing!public! !
!

!WAEmailAddress class methodsFor!

address: aString	^ self new		address: aString;		yourself!

address: anAddressString username: aUsernameString	^ self new		address: anAddressString;		username: aUsernameString;		yourself! !

!WAEmailAddress class categoriesForMethods!
address:!instance creation!public! !
address:username:!instance creation!public! !
!

