"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WAInputPostFunctionalTest
	instanceVariableNames: 'inputElements hasBody ran'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAInputPostFunctionalTest guid: (GUID fromString: '{7a8d5beb-86f4-4a8e-832d-5936d974e304}')!
WAInputPostFunctionalTest comment: ''!
!WAInputPostFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WAInputPostFunctionalTest methodsFor!

children	^ Array with: inputElements!

initialize	super initialize.	inputElements := WAInputElementContainer new.	ran := false!

readRequestBody	ran := true.	hasBody := self requestContext request rawBody notNil!

renderContentOn: html	self renderExplanationOn: html.	html form: [		html table: inputElements.		html div: [			self renderRequestBodyOn: html.			"div for validation"			html submitButton ] ]!

renderExplanationOn: html	html paragraph: 'This form uses an URL-encoded POST request. The upload is not supposed to work.'!

renderRequestBodyOn: html	html hiddenInput		callback: [ self readRequestBody ].	html strong: 'Request Body:'.	ran		ifTrue: [ html text: (hasBody ifTrue: [ 'Success' ] ifFalse: [ 'Fail' ]) ]		ifFalse: [ html text: 'Not Run' ].	html break! !
!WAInputPostFunctionalTest categoriesFor: #children!hooks!public! !
!WAInputPostFunctionalTest categoriesFor: #initialize!initialization!public! !
!WAInputPostFunctionalTest categoriesFor: #readRequestBody!actions!public! !
!WAInputPostFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!WAInputPostFunctionalTest categoriesFor: #renderExplanationOn:!public!rendering! !
!WAInputPostFunctionalTest categoriesFor: #renderRequestBodyOn:!public!rendering! !

