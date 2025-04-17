"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAInputPostMultipartFunctionalTest
	instanceVariableNames: 'inputElements hasBody ran'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAInputPostMultipartFunctionalTest guid: (GUID fromString: '{fe1471c5-5ee7-4d6d-8fdd-7aab334cea28}')!

WAInputPostMultipartFunctionalTest comment: ''!

!WAInputPostMultipartFunctionalTest categoriesForClass!Unclassified! !

!WAInputPostMultipartFunctionalTest methodsFor!

children	^ Array with: inputElements!

initialize	super initialize.	inputElements := WAInputElementContainer new.	ran := false!

readRequestBody	ran := true.	hasBody := self requestContext request rawBody notNil!

renderContentOn: html	self renderExplanationOn: html.	html form		multipart;		with: [			html table: inputElements.			html div: [				self renderRequestBodyOn: html.				"div for validation"				html submitButton ] ]!

renderExplanationOn: html	html paragraph: 'This form uses a multipart POST request. The upload is supposed to accept a file.'!

renderRequestBodyOn: html	html hiddenInput		callback: [ self readRequestBody ].	html strong: 'Request Body:'.	ran		ifTrue: [ html text: (hasBody ifTrue: [ 'Success' ] ifFalse: [ 'Fail' ]) ]		ifFalse: [ html text: 'Not Run' ].	html break! !

!WAInputPostMultipartFunctionalTest categoriesForMethods!
children!hooks!public! !
initialize!initialization!public! !
readRequestBody!actions!public! !
renderContentOn:!public!rendering! !
renderExplanationOn:!public!rendering! !
renderRequestBodyOn:!public!rendering! !
!

