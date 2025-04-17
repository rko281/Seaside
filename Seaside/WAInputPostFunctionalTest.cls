"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAInputPostFunctionalTest
	instanceVariableNames: 'inputElements hasBody ran'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAInputPostFunctionalTest guid: (GUID fromString: '{93c54860-fca1-45e4-a49c-f36618c6a2ca}')!

WAInputPostFunctionalTest comment: ''!

!WAInputPostFunctionalTest categoriesForClass!Unclassified! !

!WAInputPostFunctionalTest methodsFor!

children	^ Array with: inputElements!

initialize	super initialize.	inputElements := WAInputElementContainer new.	ran := false!

readRequestBody	ran := true.	hasBody := self requestContext request rawBody notNil!

renderContentOn: html	self renderExplanationOn: html.	html form: [		html table: inputElements.		html div: [			self renderRequestBodyOn: html.			"div for validation"			html submitButton ] ]!

renderExplanationOn: html	html paragraph: 'This form uses an URL-encoded POST request. The upload is not supposed to work.'!

renderRequestBodyOn: html	html hiddenInput		callback: [ self readRequestBody ].	html strong: 'Request Body:'.	ran		ifTrue: [ html text: (hasBody ifTrue: [ 'Success' ] ifFalse: [ 'Fail' ]) ]		ifFalse: [ html text: 'Not Run' ].	html break! !

!WAInputPostFunctionalTest categoriesForMethods!
children!hooks!public! !
initialize!initialization!public! !
readRequestBody!actions!public! !
renderContentOn:!public!rendering! !
renderExplanationOn:!public!rendering! !
renderRequestBodyOn:!public!rendering! !
!

