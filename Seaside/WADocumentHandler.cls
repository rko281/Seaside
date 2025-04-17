"Filed out from Dolphin Smalltalk"!

WARequestHandler subclass: #WADocumentHandler
	instanceVariableNames: 'document'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADocumentHandler guid: (GUID fromString: '{88f66de2-6a70-4463-a301-7988a4c7e3ea}')!

WADocumentHandler comment: 'WADocumentHandler handles requests for images, text documents and binary files (byte arrays). This class is not normally used directly. A number of WA*Tag classes implement document:mimeType:fileName: which use WADocumentHandler. Given a document, #document:mimeType:fileName: creates a WADocumentHandler for the document, registers the handler with a Registry, and adds the correct url in the tag for the document.Instance Variables:	document	<WAMimeDocument>	MIMEDocument object representing this document and mimeType, generates stream used to write document for the response.'!

!WADocumentHandler categoriesForClass!RequestHandling! !

!WADocumentHandler methodsFor!

= anObject	^ self species = anObject species and: [ self document = anObject document ]!

document	^ document!

handleFiltered: aRequestContext	aRequestContext respond: [ :response |		response			cacheForever;			document: self document ]!

hash	^ self document hash!

initializeOn: aDocument	self initialize.	document := aDocument!

postCopy	super postCopy.	document := document copy! !

!WADocumentHandler categoriesForMethods!
=!comparing!public! !
document!accessing!public! !
handleFiltered:!handling!public! !
hash!comparing!public! !
initializeOn:!initialization!public! !
postCopy!copying!public! !
!

!WADocumentHandler class methodsFor!

document: anObject	^ self basicNew initializeOn: anObject seasideMimeDocument; yourself!

document: anObject mimeType: aMimeType	^ self document: anObject mimeType: aMimeType fileName: nil!

document: anObject mimeType: aMimeType fileName: aString	| document |	document := aMimeType isNil		ifTrue: [ anObject seasideMimeDocument ]		ifFalse: [ anObject seasideMimeDocumentType: aMimeType ].	aString isNil		ifFalse: [ document fileName: aString ].	^ self document: document! !

!WADocumentHandler class categoriesForMethods!
document:!instance creation!public! !
document:mimeType:!instance creation!public! !
document:mimeType:fileName:!instance creation!public! !
!

