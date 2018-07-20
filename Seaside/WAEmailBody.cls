"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAEmailBody
	instanceVariableNames: 'contentString'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAEmailBody guid: (GUID fromString: '{cf47a963-abf7-4512-86f0-c9d816910774}')!
WAEmailBody comment: ''!
!WAEmailBody categoriesForClass!Seaside-Email! !
!WAEmailBody methodsFor!

<= anEmailBody	^ self sortOrder <= anEmailBody sortOrder!

= anObject	"Answer whether the receiver and anObject represent the same object."	self == anObject		ifTrue: [ ^ true ].	self class = anObject class		ifFalse: [ ^ false ].	^ self contentType = anObject contentType!

contentString	^ contentString!

contentString: aString	contentString := aString!

contentType	^ self subclassResponsibility!

greaseString	^ self contentString!

hash	"Answer an integer value that is related to the identity of the receiver."	^ self contentType hash!

isHtml	^ false!

isPlainText	^ false!

sortOrder	^ self subclassResponsibility!

writeOn: aStream	aStream		nextPutAll: 'Content-Type: ';		nextPutAll: self contentType greaseString ;		nextPut: Character cr;		nextPut: Character cr;		nextPutAll: self contentString;		nextPut: Character cr! !
!WAEmailBody categoriesFor: #<=!accessing!public! !
!WAEmailBody categoriesFor: #=!comparing!public! !
!WAEmailBody categoriesFor: #contentString!accessing!public! !
!WAEmailBody categoriesFor: #contentString:!accessing!public! !
!WAEmailBody categoriesFor: #contentType!accessing!public! !
!WAEmailBody categoriesFor: #greaseString!accessing!public! !
!WAEmailBody categoriesFor: #hash!comparing!public! !
!WAEmailBody categoriesFor: #isHtml!public!testing! !
!WAEmailBody categoriesFor: #isPlainText!public!testing! !
!WAEmailBody categoriesFor: #sortOrder!accessing!public! !
!WAEmailBody categoriesFor: #writeOn:!accessing!public! !

