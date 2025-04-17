"Filed out from Dolphin Smalltalk"!

WAEmailBody subclass: #WAHtmlEmailBody
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHtmlEmailBody guid: (GUID fromString: '{006fbdf5-780b-427f-97a0-e712182dd705}')!

WAHtmlEmailBody comment: 'I am an HTML email body.'!

!WAHtmlEmailBody categoriesForClass!Base! !

!WAHtmlEmailBody methodsFor!

contentType	^ WAMimeType textHtml!

isHtml	^ true!

renderBlock: anHtmlRenderingBlock	self		contentString:			(WAHtmlCanvas builder				fullDocument: true;				render: anHtmlRenderingBlock)!

sortOrder	^ 2! !

!WAHtmlEmailBody categoriesForMethods!
contentType!accessing!public! !
isHtml!public!testing! !
renderBlock:!initialization!public! !
sortOrder!accessing!public! !
!

!WAHtmlEmailBody class methodsFor!

renderingBlock: anHtmlRenderingBlock	^ self new renderBlock: anHtmlRenderingBlock! !

!WAHtmlEmailBody class categoriesForMethods!
renderingBlock:!instance/creation!public! !
!

