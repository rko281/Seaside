"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAAbstractFile
	instanceVariableNames: 'contentType fileName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAbstractFile guid: (GUID fromString: '{cdc1f486-7429-4c67-ae78-2da8532a4993}')!

WAAbstractFile comment: ''!

!WAAbstractFile categoriesForClass!HTTP! !

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

