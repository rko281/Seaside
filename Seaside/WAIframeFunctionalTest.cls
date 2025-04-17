"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAIframeFunctionalTest
	instanceVariableNames: 'batchFunctionalTest'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAIframeFunctionalTest guid: (GUID fromString: '{10a5b1da-0bf9-4814-801a-193720e53324}')!

WAIframeFunctionalTest comment: ''!

!WAIframeFunctionalTest categoriesForClass!Unclassified! !

!WAIframeFunctionalTest methodsFor!

batchFunctionalTestLoop	self session presenter		show: WABatchFunctionalTest new!

children	^ Array with: batchFunctionalTest!

initialize	super initialize.	batchFunctionalTest := WABatchFunctionalTest new!

renderContentOn: html	html paragraph: 'With #contents:'.	html iframe		contents: batchFunctionalTest.	html paragraph: 'With #url:'.	html iframe		url: (WATestingFiles / #samplePng).	html paragraph: 'With #document:'.	html iframe		document: WATestingFiles default samplePng		mimeType: 'image/png'.	html paragraph: 'With #document:'.	html iframe		document: WATestingFiles default samplePng		mimeType: 'image/png'.		html paragraph: 'With #callback:'.	html iframe		callback: [ self batchFunctionalTestLoop ]!

style	^ 'iframe {	border: 1px solid gray;	width: 100%;}'! !

!WAIframeFunctionalTest categoriesForMethods!
batchFunctionalTestLoop!actions!public! !
children!hooks!public! !
initialize!initialization!public! !
renderContentOn:!public!rendering! !
style!hooks!public! !
!

