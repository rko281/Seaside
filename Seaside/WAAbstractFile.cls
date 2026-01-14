"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAAbstractFile
	instanceVariableNames: 'contentType fileName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAbstractFile guid: (GUID fromString: '{fdedfe05-7ba0-4e07-9bf9-b4b398d5de9e}')!

WAAbstractFile comment: ''!

!WAAbstractFile categoriesForClass!Seaside-Core-HTTP! !

!WAAbstractFile methodsFor!

contentsDecodedUsing: aCharSetName	"Answer the contents decoded using the given character set name."	^ (GRCodec forEncoding: aCharSetName) decode: self rawContents!

contentType	^ contentType!

contentType: aMimeTypeOrString	contentType := aMimeTypeOrString isNil		ifFalse: [ aMimeTypeOrString seasideMimeType ]!

fileName	^ fileName!

fileName: aString	fileName := aString!

rawContents	^ self subclassResponsibility!

size	^ self subclassResponsibility! !

!WAAbstractFile categoriesForMethods!
contentsDecodedUsing:!accessing!public! !
contentType!accessing!public! !
contentType:!accessing!public! !
fileName!accessing!public! !
fileName:!accessing!public! !
rawContents!accessing!public! !
size!accessing!public! !
!

