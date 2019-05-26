"Filed out from Dolphin Smalltalk 7"!

WARequestHandler subclass: #WADocumentHandler
	instanceVariableNames: 'document'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADocumentHandler guid: (GUID fromString: '{ed9fe5ec-e296-4aeb-83f3-9f4b203b81de}')!
WADocumentHandler comment: 'WADocumentHandler handles requests for images, text documents and binary files (byte arrays). This class is not normally used directly. A number of WA*Tag classes implement document:mimeType:fileName: which use WADocumentHandler. Given a document, #document:mimeType:fileName: creates a WADocumentHandler for the document, registers the handler with a Registry, and adds the correct url in the tag for the document.Instance Variables:	document	<WAMimeDocument>	MIMEDocument object representing this document and mimeType, generates stream used to write document for the response.'!
!WADocumentHandler categoriesForClass!Seaside-Core-RequestHandling! !
!WADocumentHandler methodsFor!

= anObject	^ self species = anObject species and: [ self document = anObject document ]!

document	^ document!

handleFiltered: aRequestContext	aRequestContext respond: [ :response |		response			cacheForever;			document: self document ]!

hash	^ self document hash!

initializeOn: aDocument	self initialize.	document := aDocument!

postCopy	super postCopy.	document := document copy! !
!WADocumentHandler categoriesFor: #=!comparing!public! !
!WADocumentHandler categoriesFor: #document!accessing!public! !
!WADocumentHandler categoriesFor: #handleFiltered:!handling!public! !
!WADocumentHandler categoriesFor: #hash!comparing!public! !
!WADocumentHandler categoriesFor: #initializeOn:!initialization!public! !
!WADocumentHandler categoriesFor: #postCopy!copying!public! !

!WADocumentHandler class methodsFor!

document: anObject	^ self basicNew initializeOn: anObject seasideMimeDocument; yourself!

document: anObject mimeType: aMimeType	^ self document: anObject mimeType: aMimeType fileName: nil!

document: anObject mimeType: aMimeType fileName: aString	| document |	document := aMimeType isNil		ifTrue: [ anObject seasideMimeDocument ]		ifFalse: [ anObject seasideMimeDocumentType: aMimeType ].	aString isNil		ifFalse: [ document fileName: aString ].	^ self document: document! !
!WADocumentHandler class categoriesFor: #document:!instance creation!public! !
!WADocumentHandler class categoriesFor: #document:mimeType:!instance creation!public! !
!WADocumentHandler class categoriesFor: #document:mimeType:fileName:!instance creation!public! !

