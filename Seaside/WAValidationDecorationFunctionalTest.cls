"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAValidationDecorationFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAValidationDecorationFunctionalTest guid: (GUID fromString: '{67f7a34a-54ae-49b7-abe3-09d5ff8d1963}')!

WAValidationDecorationFunctionalTest comment: ''!

!WAValidationDecorationFunctionalTest categoriesForClass!Seaside-Tests-Functional! !

!WAValidationDecorationFunctionalTest methodsFor!

renderContentOn: html	self renderExplanationOn: html.	self renderValidationOn: html!

renderExplanationOn: html	html paragraph: [		html text: 'This is a functional test for WAValidationDecoration.'.		html orderedList: [			html listItem: 'Clicking on ''Start'' should take you to a new page with two links, "Fail validation" and "Suceed validation"'.			html listItem: 'Clicking on "Fail validation" should display "Validation Failed!!" above the two links'.			html listItem: 'Clicking on "Succeed validation" should just display "Validation Succeeded!!" and then take you back to this page' ] ]!

renderValidationOn: html	html anchor		callback: [ self startValidation ];		with: 'Start'!

startValidation	self call: (WAValidationTestComponent new		validateWith: [ :value |			value ifFalse: [				WAValidationNotification signal: 'Validation Failed!!' ] ];		yourself).	self inform: 'Validation Succeeded!!'! !

!WAValidationDecorationFunctionalTest categoriesForMethods!
renderContentOn:!public!rendering! !
renderExplanationOn:!public!rendering! !
renderValidationOn:!public!rendering! !
startValidation!actions!public! !
!

