"Filed out from Dolphin Smalltalk 7"!

WAEmailBody subclass: #WAHtmlEmailBody
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHtmlEmailBody guid: (GUID fromString: '{8067559c-b63f-40bd-9165-252d3e25de62}')!
WAHtmlEmailBody comment: 'I am an HTML email body.'!
!WAHtmlEmailBody categoriesForClass!Seaside-Email-Base! !
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

