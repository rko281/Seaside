"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAMimeDocument
	instanceVariableNames: 'contents mimeType fileName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMimeDocument guid: (GUID fromString: '{71baa915-f6a3-4407-b659-0908a1228c65}')!

WAMimeDocument comment: 'WAMimeDocument is the abstract base class for mime documents. It is intended as a very basic, mime documents. Implementations are free to use more advance, native implementations as long as they conform to the protocol.Instance Variables	contentType:		<WAMimeType>mimeType	- the mime type of this document'!

!WAMimeDocument categoriesForClass!HTTP! !

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

!WAMimeDocument categoriesForMethods!
=!comparing!public! !
content!compatibility!public! !
contents!accessing!public! !
contents:!accessing!public! !
contentStream!compatibility!public! !
contentType!compatibility!public! !
fileName!accessing!public! !
fileName:!accessing!public! !
hash!comparing!public! !
initializeOn:mimeType:fileName:!initialization!public! !
mimeType!accessing!public! !
mimeType:!accessing!public! !
seasideMimeDocument!converting!public! !
!

!WAMimeDocument class methodsFor!

on: aCollection	^ self on: aCollection mimeType: nil!

on: aCollection mimeType: aMimeType	^ self on: aCollection mimeType: aMimeType fileName: nil!

on: aCollection mimeType: aMimeType fileName: aString	^ self basicNew initializeOn: aCollection mimeType: aMimeType fileName: aString; yourself! !

!WAMimeDocument class categoriesForMethods!
on:!instance creation!public! !
on:mimeType:!instance creation!public! !
on:mimeType:fileName:!instance creation!public! !
!

