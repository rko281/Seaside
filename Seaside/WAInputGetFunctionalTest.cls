"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WAInputGetFunctionalTest
	instanceVariableNames: 'inputElements'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAInputGetFunctionalTest guid: (GUID fromString: '{6a155625-769f-4052-8f9c-31e8a5cbd258}')!
WAInputGetFunctionalTest comment: ''!
!WAInputGetFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WAInputGetFunctionalTest methodsFor!

children	^ Array with: inputElements!

initialize	super initialize.	inputElements := WAInputElementContainer new!

renderContentOn: html	self renderExplanationOn: html.	html form		get;		with: [			html table: inputElements.			html div: [				"div for validation"				html submitButton ] ]!

renderExplanationOn: html	html paragraph: 'This form uses a HTTP GET request. The upload is not supposed to work.'! !
!WAInputGetFunctionalTest categoriesFor: #children!hooks!public! !
!WAInputGetFunctionalTest categoriesFor: #initialize!initialization!public! !
!WAInputGetFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!WAInputGetFunctionalTest categoriesFor: #renderExplanationOn:!public!rendering! !

