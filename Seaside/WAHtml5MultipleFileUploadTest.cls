"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WAHtml5MultipleFileUploadTest
	instanceVariableNames: 'files'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHtml5MultipleFileUploadTest guid: (GUID fromString: '{024f8f6f-0123-4e73-aff9-a5e01aabb0bd}')!
WAHtml5MultipleFileUploadTest comment: ''!
!WAHtml5MultipleFileUploadTest categoriesForClass!Seaside-Tests-Functional! !
!WAHtml5MultipleFileUploadTest methodsFor!

renderContentOn: html	self renderUploadOn: html.	self renderFilesOn: html!

renderFilesOn: html	files isNil ifTrue: [ ^ self ].	html unorderedList: [		files do: [ :each |			html listItem: each fileName ] ]!

renderUploadOn: html	html form		multipart;		with: [			html div: [				"div for HTML validation"				html fileUpload					multipleValuesCallback: [ :f | files := f ].				html submitButton ] ]! !
!WAHtml5MultipleFileUploadTest categoriesFor: #renderContentOn:!public!rendering! !
!WAHtml5MultipleFileUploadTest categoriesFor: #renderFilesOn:!public!rendering! !
!WAHtml5MultipleFileUploadTest categoriesFor: #renderUploadOn:!public!rendering! !

