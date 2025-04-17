"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAEmailBody
	instanceVariableNames: 'contentString'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAEmailBody guid: (GUID fromString: '{49a3a377-9591-43cb-91c9-26df67db9e1a}')!

WAEmailBody comment: 'I am the abstract superclass for email bodies.'!

!WAEmailBody categoriesForClass!Base! !

!WAEmailBody methodsFor!

<= anEmailBody	^ self sortOrder <= anEmailBody sortOrder!

= anObject	"Answer whether the receiver and anObject represent the same object."	self == anObject		ifTrue: [ ^ true ].	self class = anObject class		ifFalse: [ ^ false ].	^ self contentType = anObject contentType!

contentString	^ contentString!

contentString: aString	contentString := aString!

contentType	^ self subclassResponsibility!

greaseString	^ self contentString!

hash	"Answer an integer value that is related to the identity of the receiver."	^ self contentType hash!

isHtml	^ false!

isPlainText	^ false!

sortOrder	^ self subclassResponsibility!

writeOn: aStream	aStream		nextPutAll: 'Content-Type: ';		nextPutAll: self contentType greaseString ;		nextPut: Character cr;		nextPut: Character cr;		nextPutAll: self contentString;		nextPut: Character cr! !

!WAEmailBody categoriesForMethods!
<=!accessing!public! !
=!comparing!public! !
contentString!accessing!public! !
contentString:!accessing!public! !
contentType!accessing!public! !
greaseString!accessing!public! !
hash!comparing!public! !
isHtml!public!testing! !
isPlainText!public!testing! !
sortOrder!accessing!public! !
writeOn:!accessing!public! !
!

!WAEmailBody class methodsFor!

isAbstract 	^ self == WAEmailBody! !

!WAEmailBody class categoriesForMethods!
isAbstract!public!testing! !
!

