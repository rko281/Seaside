"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WAUrlEncodingFunctionalTest
	instanceVariableNames: 'input'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAUrlEncodingFunctionalTest guid: (GUID fromString: '{b9488e00-e598-4127-befd-5a25945d3317}')!
WAUrlEncodingFunctionalTest comment: ''!
!WAUrlEncodingFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WAUrlEncodingFunctionalTest methodsFor!

initialize	super initialize.	input := 'input'!

input	^ input!

input: aString	input := aString!

parameter	| fieldValue request urlValue |	request := self requestContext request.	fieldValue := request at: 'input' ifAbsent: [ nil ].	urlValue := request url queryFields at: 'input' ifAbsent: [ nil ].	^ (urlValue = input and: [ fieldValue = input ])		ifTrue: [ fieldValue ]		ifFalse: [ 'fail!!' ]!

path	| path |	path := self requestContext request url path last.	^ path = input		ifTrue: [ path ]		ifFalse: [ 'fail!!' ]!

renderContentOn: html	self renderExplanationOn: html.	html form		get;		with: [			html div: [				html textInput					on: #input of: self.				html submitButton ] ].			html definitionList: [		html definitionTerm: 'Input'.		html definitionData: self input.				html definitionTerm: 'Parameter'.		html definitionData: self parameter.				html definitionTerm: 'Path'.		html definitionData: self path ]!

renderExplanationOn: html	html paragraph: 'This tests whether url encoding works.'.	html unorderedList: [		html listItem: [			html text: 'Go to the '.			html anchor				url: 'http://www.columbia.edu/kermit/utf8.html';				with: 'UTF-8 Sampler'.			html text: ' and select some "foreign" text.' ].		html listItem: 'Copy and paste it into the urlencoded text field below and click the submit button.'.		html listItem: 'The text should be displayed below "Input", "Parameter" and "Path" without any error.'.		html listItem: 'The text may appear in the address bar of the browser.'.		html listItem: 'Repeat this process. Make sure to pick at least every of these languages: German, Czech, Korean.' ]!

updateUrl: aUrl	super updateUrl: aUrl.	input isEmptyOrNil ifTrue: [ ^ self ].	aUrl addToPath: input.	aUrl addField: 'input' value: input! !
!WAUrlEncodingFunctionalTest categoriesFor: #initialize!initialization!public! !
!WAUrlEncodingFunctionalTest categoriesFor: #input!accessing!public! !
!WAUrlEncodingFunctionalTest categoriesFor: #input:!accessing!public! !
!WAUrlEncodingFunctionalTest categoriesFor: #parameter!accessing!public! !
!WAUrlEncodingFunctionalTest categoriesFor: #path!accessing!public! !
!WAUrlEncodingFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!WAUrlEncodingFunctionalTest categoriesFor: #renderExplanationOn:!public!rendering! !
!WAUrlEncodingFunctionalTest categoriesFor: #updateUrl:!public!updating! !

