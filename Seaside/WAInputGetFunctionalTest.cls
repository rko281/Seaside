"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAInputGetFunctionalTest
	instanceVariableNames: 'inputElements'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAInputGetFunctionalTest guid: (GUID fromString: '{9fce51d4-63ab-46c1-96a9-0e81cee55214}')!

WAInputGetFunctionalTest comment: ''!

!WAInputGetFunctionalTest categoriesForClass!Unclassified! !

!WAInputGetFunctionalTest methodsFor!

children	^ Array with: inputElements!

initialize	super initialize.	inputElements := WAInputElementContainer new!

renderContentOn: html	self renderExplanationOn: html.	html form		get;		with: [			html table: inputElements.			html div: [				"div for validation"				html submitButton ] ]!

renderExplanationOn: html	html paragraph: 'This form uses a HTTP GET request. The upload is not supposed to work.'! !

!WAInputGetFunctionalTest categoriesForMethods!
children!hooks!public! !
initialize!initialization!public! !
renderContentOn:!public!rendering! !
renderExplanationOn:!public!rendering! !
!

