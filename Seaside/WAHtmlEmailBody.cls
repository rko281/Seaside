"Filed out from Dolphin Smalltalk 7"!

WAEmailBody subclass: #WAHtmlEmailBody
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHtmlEmailBody guid: (GUID fromString: '{742f9b9f-5811-4ba2-9557-474cc11bb47d}')!
WAHtmlEmailBody comment: ''!
!WAHtmlEmailBody categoriesForClass!Seaside-Email! !
!WAHtmlEmailBody methodsFor!

contentType	^ WAMimeType textHtml!

isHtml	^ true!

renderBlock: anHtmlRenderingBlock	self		contentString:			(WAHtmlCanvas builder				fullDocument: true;				render: anHtmlRenderingBlock)!

sortOrder	^ 2! !
!WAHtmlEmailBody categoriesFor: #contentType!accessing!public! !
!WAHtmlEmailBody categoriesFor: #isHtml!public!testing! !
!WAHtmlEmailBody categoriesFor: #renderBlock:!initialization!public! !
!WAHtmlEmailBody categoriesFor: #sortOrder!accessing!public! !

!WAHtmlEmailBody class methodsFor!

renderingBlock: anHtmlRenderingBlock	^ self new renderBlock: anHtmlRenderingBlock! !
!WAHtmlEmailBody class categoriesFor: #renderingBlock:!instance/creation!public! !

