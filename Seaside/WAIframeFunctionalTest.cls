"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WAIframeFunctionalTest
	instanceVariableNames: 'batchFunctionalTest'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAIframeFunctionalTest guid: (GUID fromString: '{25b07c84-980f-4b64-85c5-b2ad8391cefe}')!
WAIframeFunctionalTest comment: ''!
!WAIframeFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WAIframeFunctionalTest methodsFor!

batchFunctionalTestLoop	self session presenter		show: WABatchFunctionalTest new!

children	^ Array with: batchFunctionalTest!

initialize	super initialize.	batchFunctionalTest := WABatchFunctionalTest new!

renderContentOn: html	html paragraph: 'With #contents:'.	html iframe		contents: batchFunctionalTest.	html paragraph: 'With #url:'.	html iframe		url: (WATestingFiles / #samplePng).	html paragraph: 'With #document:'.	html iframe		document: WATestingFiles default samplePng		mimeType: 'image/png'.	html paragraph: 'With #document:'.	html iframe		document: WATestingFiles default samplePng		mimeType: 'image/png'.		html paragraph: 'With #callback:'.	html iframe		callback: [ self batchFunctionalTestLoop ]!

style	^ 'iframe {	border: 1px solid gray;	width: 100%;}'! !
!WAIframeFunctionalTest categoriesFor: #batchFunctionalTestLoop!actions!public! !
!WAIframeFunctionalTest categoriesFor: #children!hooks!public! !
!WAIframeFunctionalTest categoriesFor: #initialize!initialization!public! !
!WAIframeFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!WAIframeFunctionalTest categoriesFor: #style!hooks!public! !

