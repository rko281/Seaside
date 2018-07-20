"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAMimeDocument
	instanceVariableNames: 'contents mimeType fileName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMimeDocument guid: (GUID fromString: '{254d8025-cc4e-425d-9d2f-3d334ed50baa}')!
WAMimeDocument comment: 'WAMimeDocument is the abstract base class for mime documents. It is intended as a very basic, mime documents. Implementations are free to use more advance, native implementations as long as they conform to the protocol.Instance Variables	contentType:		<WAMimeType>mimeType	- the mime type of this document'!
!WAMimeDocument categoriesForClass!Seaside-Core-HTTP! !
!WAMimeDocument methodsFor!

= anObject	^ (anObject isKindOf: WAMimeDocument)		and: [ self mimeType = anObject mimeType		and: [ self fileName = anObject fileName		and: [ self contents = anObject contents ] ] ]!

content	^ self contents!

contents	"Answer the content of the receiver as a Collection of Characters or bytes."		^ contents!

contents: aCollection	contents := aCollection!

contentStream	^ self contents readStream!

contentType	^ self mimeType!

fileName	"Answer the file name of this document, or nil."		^ fileName!

fileName: aString	fileName := aString!

hash	^ (self mimeType hash		bitXor: self fileName hash)		bitXor: self contents hash!

initializeOn: aCollection mimeType: aMimeType fileName: aString	self initialize.	self contents: aCollection.	self mimeType: aMimeType.	self fileName: aString!

mimeType	"Answer the file name of this document, or nil."		^ mimeType!

mimeType: aMimeType	mimeType := aMimeType isNil		ifFalse: [ aMimeType seasideMimeType ]		ifTrue: [ WAMimeType applicationOctetStream ]!

seasideMimeDocument	^ self! !
!WAMimeDocument categoriesFor: #=!comparing!public! !
!WAMimeDocument categoriesFor: #content!compatibility!public! !
!WAMimeDocument categoriesFor: #contents!accessing!public! !
!WAMimeDocument categoriesFor: #contents:!accessing!public! !
!WAMimeDocument categoriesFor: #contentStream!compatibility!public! !
!WAMimeDocument categoriesFor: #contentType!compatibility!public! !
!WAMimeDocument categoriesFor: #fileName!accessing!public! !
!WAMimeDocument categoriesFor: #fileName:!accessing!public! !
!WAMimeDocument categoriesFor: #hash!comparing!public! !
!WAMimeDocument categoriesFor: #initializeOn:mimeType:fileName:!initialization!public! !
!WAMimeDocument categoriesFor: #mimeType!accessing!public! !
!WAMimeDocument categoriesFor: #mimeType:!accessing!public! !
!WAMimeDocument categoriesFor: #seasideMimeDocument!converting!public! !

!WAMimeDocument class methodsFor!

on: aCollection	^ self on: aCollection mimeType: nil!

on: aCollection mimeType: aMimeType	^ self on: aCollection mimeType: aMimeType fileName: nil!

on: aCollection mimeType: aMimeType fileName: aString	^ self basicNew initializeOn: aCollection mimeType: aMimeType fileName: aString; yourself! !
!WAMimeDocument class categoriesFor: #on:!instance creation!public! !
!WAMimeDocument class categoriesFor: #on:mimeType:!instance creation!public! !
!WAMimeDocument class categoriesFor: #on:mimeType:fileName:!instance creation!public! !

