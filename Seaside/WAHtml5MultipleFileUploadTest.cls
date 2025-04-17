"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAHtml5MultipleFileUploadTest
	instanceVariableNames: 'files'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHtml5MultipleFileUploadTest guid: (GUID fromString: '{c29ab4dd-f674-48de-9942-26a15a056dce}')!

WAHtml5MultipleFileUploadTest comment: ''!

!WAHtml5MultipleFileUploadTest categoriesForClass!Unclassified! !

!WAHtml5MultipleFileUploadTest methodsFor!

renderContentOn: html	self renderUploadOn: html.	self renderFilesOn: html!

renderFilesOn: html	files isNil ifTrue: [ ^ self ].	html unorderedList: [		files do: [ :each |			html listItem: each fileName ] ]!

renderUploadOn: html	html form		multipart;		with: [			html div: [				"div for HTML validation"				html fileUpload					multipleValuesCallback: [ :f | files := f ].				html submitButton ] ]! !

!WAHtml5MultipleFileUploadTest categoriesForMethods!
renderContentOn:!public!rendering! !
renderFilesOn:!public!rendering! !
renderUploadOn:!public!rendering! !
!

