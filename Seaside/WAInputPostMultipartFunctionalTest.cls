"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WAInputPostMultipartFunctionalTest
	instanceVariableNames: 'inputElements hasBody ran'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAInputPostMultipartFunctionalTest guid: (GUID fromString: '{53cb4248-72c7-49a6-aac5-6fca1bf3c1ab}')!
WAInputPostMultipartFunctionalTest comment: ''!
!WAInputPostMultipartFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WAInputPostMultipartFunctionalTest methodsFor!

children	^ Array with: inputElements!

initialize	super initialize.	inputElements := WAInputElementContainer new.	ran := false!

readRequestBody	ran := true.	hasBody := self requestContext request rawBody notNil!

renderContentOn: html	self renderExplanationOn: html.	html form		multipart;		with: [			html table: inputElements.			html div: [				self renderRequestBodyOn: html.				"div for validation"				html submitButton ] ]!

renderExplanationOn: html	html paragraph: 'This form uses a multipart POST request. The upload is supposed to accept a file.'!

renderRequestBodyOn: html	html hiddenInput		callback: [ self readRequestBody ].	html strong: 'Request Body:'.	ran		ifTrue: [ html text: (hasBody ifTrue: [ 'Success' ] ifFalse: [ 'Fail' ]) ]		ifFalse: [ html text: 'Not Run' ].	html break! !
!WAInputPostMultipartFunctionalTest categoriesFor: #children!hooks!public! !
!WAInputPostMultipartFunctionalTest categoriesFor: #initialize!initialization!public! !
!WAInputPostMultipartFunctionalTest categoriesFor: #readRequestBody!actions!public! !
!WAInputPostMultipartFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!WAInputPostMultipartFunctionalTest categoriesFor: #renderExplanationOn:!public!rendering! !
!WAInputPostMultipartFunctionalTest categoriesFor: #renderRequestBodyOn:!public!rendering! !

