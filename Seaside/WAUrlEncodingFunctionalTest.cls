﻿"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAUrlEncodingFunctionalTest
	instanceVariableNames: 'input'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUrlEncodingFunctionalTest guid: (GUID fromString: '{0509b2ef-bccd-4a89-b67e-ff18a6d26be9}')!

WAUrlEncodingFunctionalTest comment: ''!

!WAUrlEncodingFunctionalTest categoriesForClass!Unclassified! !

!WAUrlEncodingFunctionalTest methodsFor!

initialize	super initialize.	input := 'input'!

input	^ input!

input: aString	input := aString!

parameter	| fieldValue request urlValue |	request := self requestContext request.	fieldValue := request at: 'input' ifAbsent: [ nil ].	urlValue := request url queryFields at: 'input' ifAbsent: [ nil ].	^ (urlValue = input and: [ fieldValue = input ])		ifTrue: [ fieldValue ]		ifFalse: [ 'fail!!' ]!

path	| path |	path := self requestContext request url path last.	^ path = input		ifTrue: [ path ]		ifFalse: [ 'fail!!' ]!

renderContentOn: html	self renderExplanationOn: html.	html form		get;		with: [			html div: [				html textInput					id: #input;					on: #input of: self.				html submitButton ] ].			html definitionList: [		html definitionTerm: 'Input'.		html definitionData id: #inputresult; with: self input.				html definitionTerm: 'Parameter'.		html definitionData id: #parameterresult; with: self parameter.				html definitionTerm: 'Path'.		html definitionData id: #pathresult; with: self path ]!

renderExplanationOn: html	html paragraph: 'This tests whether url encoding works.'.	html unorderedList: [		html listItem: [			html text: 'Go to the '.			html anchor				url: 'http://www.columbia.edu/kermit/utf8.html';				with: 'UTF-8 Sampler'.			html text: ' and select some "foreign" text.' ].		html listItem: 'Copy and paste it into the urlencoded text field below and click the submit button.'.		html listItem: 'The text should be displayed below "Input", "Parameter" and "Path" without any error.'.		html listItem: 'The text may appear in the address bar of the browser.'.		html listItem: 'Repeat this process. Make sure to pick at least every of these languages: German, Czech, Korean.' ]!

updateUrl: aUrl	super updateUrl: aUrl.	input isEmptyOrNil ifTrue: [ ^ self ].	aUrl addToPath: input.	aUrl addField: 'input' value: input! !

!WAUrlEncodingFunctionalTest categoriesForMethods!
initialize!initialization!public! !
input!accessing!public! !
input:!accessing!public! !
parameter!accessing!public! !
path!accessing!public! !
renderContentOn:!public!rendering! !
renderExplanationOn:!public!rendering! !
updateUrl:!public!updating! !
!

