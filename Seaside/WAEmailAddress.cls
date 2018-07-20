"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAEmailAddress
	instanceVariableNames: 'username address'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAEmailAddress guid: (GUID fromString: '{eb3cf719-83b2-47a6-8eb9-fe04d4f2ab22}')!
WAEmailAddress comment: ''!
!WAEmailAddress categoriesForClass!Seaside-Core-HTTP! !
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
!WAEmailAddress categoriesFor: #address!accessing!public! !
!WAEmailAddress categoriesFor: #address:!accessing!public! !
!WAEmailAddress categoriesFor: #encodeOn:!displaying!public! !
!WAEmailAddress categoriesFor: #encodeOn:usingQuotes:!private! !
!WAEmailAddress categoriesFor: #greaseString!displaying!public! !
!WAEmailAddress categoriesFor: #printOn:!printing!public! !
!WAEmailAddress categoriesFor: #sanitize:!private! !
!WAEmailAddress categoriesFor: #username!accessing!public! !
!WAEmailAddress categoriesFor: #username:!accessing!public! !

!WAEmailAddress class methodsFor!

address: aString	^ self new		address: aString;		yourself!

address: anAddressString username: aUsernameString	^ self new		address: anAddressString;		username: aUsernameString;		yourself! !
!WAEmailAddress class categoriesFor: #address:!instance creation!public! !
!WAEmailAddress class categoriesFor: #address:username:!instance creation!public! !

