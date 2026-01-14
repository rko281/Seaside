"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAHtml5MultipleFileUploadTest
	instanceVariableNames: 'files'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHtml5MultipleFileUploadTest guid: (GUID fromString: '{b4678b76-4610-4bc5-a476-834cad5f515d}')!

WAHtml5MultipleFileUploadTest comment: ''!

!WAHtml5MultipleFileUploadTest categoriesForClass!Seaside-Tests-Functional! !

!WAHtml5MultipleFileUploadTest methodsFor!

renderContentOn: html	self renderUploadOn: html.	self renderFilesOn: html!

renderFilesOn: html	files isNil ifTrue: [ ^ self ].	html unorderedList: [		files do: [ :each |			html listItem: each fileName ] ]!

renderUploadOn: html	html form		multipart;		with: [			html div: [				"div for HTML validation"				html fileUpload					multipleValuesCallback: [ :f | files := f ].				html submitButton ] ]! !

!WAHtml5MultipleFileUploadTest categoriesForMethods!
renderContentOn:!public!rendering! !
renderFilesOn:!public!rendering! !
renderUploadOn:!public!rendering! !
!

